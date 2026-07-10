class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.13.4"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.4/tn-0.13.4-darwin-arm64.tar.gz"
      sha256 "7497f50fb5908f9a5aa10bc78d04c944bd60e9dfc541f94e3d3bb255f77d1cf6"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.4/tn-0.13.4-darwin-x86_64.tar.gz"
      sha256 "87983e136474fe7e0e4df83ceedf4b8fdb6be565cb685f504cf254455463d6c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.4/tn-0.13.4-linux-x86_64.tar.gz"
      sha256 "28a33dff092fc819e5e611627a7e84ae6189341a5611319e4c0ba7f3fc89c4da"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
