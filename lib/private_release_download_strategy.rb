# frozen_string_literal: true

require "download_strategy"
require "utils/github"
require "utils/github/api"

# Homebrew's default CurlDownloadStrategy hits the public
# github.com/.../releases/download/... URL. That 404s for a private
# repo. HOMEBREW_GITHUB_API_TOKEN on that URL does not authenticate
# (measured 2026-08-19). Use the Releases *assets* API instead.
#
# Credentials: Homebrew's GitHub chain — HOMEBREW_GITHUB_API_TOKEN,
# `gh auth`, or the macOS keychain.
class GitHubPrivateRepositoryReleaseDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    parse_url_pattern!(url)
    token = GitHub::API.credentials
    if GitHub::API.credentials_type == :none || token.blank?
      raise CurlDownloadStrategyError, <<~EOS
        GitHub credentials required to download private release assets.
        Run `gh auth login`, or set HOMEBREW_GITHUB_API_TOKEN.
      EOS
    end

    asset_url = "#{GitHub::API_URL}/repos/#{@owner}/#{@repo}/releases/assets/#{resolve_asset_id}"
    headers = Array(meta[:headers])
    headers << "Authorization: Bearer #{token}"
    headers << "Accept: application/octet-stream"
    super(asset_url, name, version, **meta.merge(headers: headers))
  end

  private

  def parse_url_pattern!(url)
    match = url.match(%r{\Ahttps://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)\z})
    raise CurlDownloadStrategyError, "Invalid GitHub release URL: #{url}" unless match

    @owner, @repo, @tag, @filename = match.captures
  end

  def resolve_asset_id
    release = GitHub::API.open_rest(
      "#{GitHub::API_URL}/repos/#{@owner}/#{@repo}/releases/tags/#{@tag}",
    )
    assets = release.is_a?(Hash) ? release["assets"] : nil
    raise CurlDownloadStrategyError, "Could not read release #{@tag} of #{@owner}/#{@repo}" if assets.blank?

    asset = assets.find { |a| a["name"] == @filename }
    raise CurlDownloadStrategyError, "Asset #{@filename} not found in #{@owner}/#{@repo}@#{@tag}" if asset.nil?

    asset.fetch("id")
  end
end
