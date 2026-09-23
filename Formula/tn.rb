require_relative "../lib/private_release_download_strategy"

class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.17.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release. Keep `using:` on the
  # same line so the bump regex (ends at `.tar.gz"`) leaves the strategy intact.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.17.0/tn-0.17.0-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f93612ce87cd9f65d30ce18fa71cc2dccf4fefaf63b82665b77a8a19450c61bd"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.17.0/tn-0.17.0-darwin-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "87694a351f902b994d8568be313e3aae6419653bc7c0627fe7d74eba52c5aea3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.17.0/tn-0.17.0-linux-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "04f2e22ad65bbd8e00a51ae6dc252e25bd4320bb103a390fceb5114c5c7c6102"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
