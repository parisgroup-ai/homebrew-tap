require_relative "../lib/private_release_download_strategy"

class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.28.2"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release. Keep `using:` on the
  # same line so the bump regex (ends at `.tar.gz"`) leaves the strategy intact.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.28.2/tn-0.28.2-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c524781616862b18755dc6bb31565af9d44e7469a8c7dec2f6cc4a651983f372"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.28.2/tn-0.28.2-darwin-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ff8480fb3b53aa70bd6b35a59af21755307141abb0e0cd7d5c1757190ea4422f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.28.2/tn-0.28.2-linux-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "65fd80c2dac7de8754a5f93055350d181ef2dc4e71d7a926f8f592dd9d9cbb85"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
