require_relative "../lib/private_release_download_strategy"

class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.18.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release. Keep `using:` on the
  # same line so the bump regex (ends at `.tar.gz"`) leaves the strategy intact.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.18.0/tn-0.18.0-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e8e471c8dd81153b2eb16f4b734e1042b457d86ec7e13afcb42de191f420425b"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.18.0/tn-0.18.0-darwin-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c955d5cc8d0d6bc7a10dc4f483c384864d897687202203161a54c2f8ee5fb107"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.18.0/tn-0.18.0-linux-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ff675b864da4512835746739cb9d3f7edc1a05500476308432cfa722773f870b"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
