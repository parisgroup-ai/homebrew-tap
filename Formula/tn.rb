class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.9.1"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.1/tn-0.9.1-darwin-arm64.tar.gz"
      sha256 "be781ce48c17b5a46c0458735b71910de73d6eb0617aa5d7f2841db507d0b19d"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.1/tn-0.9.1-darwin-x86_64.tar.gz"
      sha256 "5f5d9344cdb3ff9e4a3377a26acc83fd94936ba5ccf3b2a56a6ccb02ffe6c1fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.1/tn-0.9.1-linux-x86_64.tar.gz"
      sha256 "e84fb5f41567d66c52951dd291b5f9e3a501a49c151650d5710e9655eb741197"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
