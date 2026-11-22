require_relative "../lib/private_release_download_strategy"

class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.28.1"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release. Keep `using:` on the
  # same line so the bump regex (ends at `.tar.gz"`) leaves the strategy intact.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.28.1/tn-0.28.1-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "69122df4793ad5c348b2eac3699d1a0153dd618cbfa771dd3fa2118b38b53534"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.28.1/tn-0.28.1-darwin-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "86bc59c7a902bdbfd3b5b329872e8b7b2b66d54c2cced9e06849645576b853e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.28.1/tn-0.28.1-linux-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ce1c37b3d8b2221bbb6d956f7b92b7193179533c18fefa07c1ee4a00ddd54ebf"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
