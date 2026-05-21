class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.7.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.7.0/tn-0.7.0-darwin-arm64.tar.gz"
      sha256 "e5b3745ea3f29beecde71184b3fdabf69ce0b8008ed9310ff1ac3fc6461bd430"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.7.0/tn-0.7.0-darwin-x86_64.tar.gz"
      sha256 "a2af13979eb6bf6d56ca11186f0b3834d1515be6c1f43d628d617d4bc5423bde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.7.0/tn-0.7.0-linux-x86_64.tar.gz"
      sha256 "33ca45df237c97222964196c69aac823fe1425496800da0f26b5d3b22e042388"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
