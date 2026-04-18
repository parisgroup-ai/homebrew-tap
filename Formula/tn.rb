class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.3"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.3/tn-0.5.3-darwin-arm64.tar.gz"
      sha256 "d204dfb54457c1d53292b7a75aee8c595559d6fc637bbcf2b42532b822854457"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.3/tn-0.5.3-darwin-x86_64.tar.gz"
      sha256 "56e0ba802a4f14c8c88d01caec15b8147f6bdd297eff6d386916b12c67cc7f95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.3/tn-0.5.3-linux-x86_64.tar.gz"
      sha256 "6dc548a489082b0bc9f206ab688c91853d6f5ec6d12b80217ff4a1d728777591"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
