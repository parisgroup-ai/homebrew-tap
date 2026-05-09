class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.16"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.16/tn-0.5.16-darwin-arm64.tar.gz"
      sha256 "c0bd4210cafb2559926d0dac5005ddf2bdb210d417e33256e22375491d3e4905"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.16/tn-0.5.16-darwin-x86_64.tar.gz"
      sha256 "930dddab0d68591c24ed8a2422b78e224ae3f60356249c88f42ab0751479a047"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.16/tn-0.5.16-linux-x86_64.tar.gz"
      sha256 "2842920edfccb6c01488884ab92680c045147572ed46b76184e35f1625b77feb"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
