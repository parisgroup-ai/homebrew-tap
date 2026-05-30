class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.11.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.11.0/tn-0.11.0-darwin-arm64.tar.gz"
      sha256 "1112a05b6fb9d054a586660e7daf09a684b915761400cc5bea576638aaa29382"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.11.0/tn-0.11.0-darwin-x86_64.tar.gz"
      sha256 "3eaa47cfd63baf23539ea96509a4a9d0b4e39ec18598cf2aced33b886aceabcf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.11.0/tn-0.11.0-linux-x86_64.tar.gz"
      sha256 "087aa0f00467f1dc1d30253efc290b778f1b8d69882de99d51501b816cd86550"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
