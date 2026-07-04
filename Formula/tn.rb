class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.13.1"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.1/tn-0.13.1-darwin-arm64.tar.gz"
      sha256 "48d8100cb44cfef16aa002eb5369be731a2be8080aad25b8bae524f6f2fc1176"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.1/tn-0.13.1-darwin-x86_64.tar.gz"
      sha256 "b5e7a9d5d2d0be39d3e71b7e26dfe6fc2c11dc12d68329a3b6344c7398630f47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.1/tn-0.13.1-linux-x86_64.tar.gz"
      sha256 "161120f90860811382ac22f0935ed91991fe66abe512ea248350804604aee12f"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
