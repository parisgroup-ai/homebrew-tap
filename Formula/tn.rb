require_relative "../lib/private_release_download_strategy"

class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.16.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release. Keep `using:` on the
  # same line so the bump regex (ends at `.tar.gz"`) leaves the strategy intact.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.16.0/tn-0.16.0-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "451d6fb7ba10fb57cecc15272d88f51873d8f540da8c4dc0b99641741fa67715"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.16.0/tn-0.16.0-darwin-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a0e9ac02fedb0a15151c51772685830ae4b13bb627a288f5cc0ee9303114bbbd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.16.0/tn-0.16.0-linux-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d773fc9e522c0637896250fd303b53b80005934b12215fb1aab75c7c902537b2"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
