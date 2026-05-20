class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.17"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.17/tn-0.5.17-darwin-arm64.tar.gz"
      sha256 "d768059c87b51b64a1e1c8782ee9c2fbf69d82737a3959a7eb53cba2b2b1c7c5"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.17/tn-0.5.17-darwin-x86_64.tar.gz"
      sha256 "389da98a19732a3839b93ed0a1e0e02f8b8eac807600112f82a0ea3e96b82344"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.17/tn-0.5.17-linux-x86_64.tar.gz"
      sha256 "af1495e03c1a06d088c845eba96d4137cd9b0c8c1f509d1c557d7e0f18744fca"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
