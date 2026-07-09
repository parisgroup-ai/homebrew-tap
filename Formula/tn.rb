class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.13.2"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.2/tn-0.13.2-darwin-arm64.tar.gz"
      sha256 "0f7480a62c244651d52f64933faf64635481a8a2be265a808424959cdcf3e884"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.2/tn-0.13.2-darwin-x86_64.tar.gz"
      sha256 "46bb1954e78510d55a861adc69bff9319b3cde24823f400263572a291a599eb5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.2/tn-0.13.2-linux-x86_64.tar.gz"
      sha256 "4638f426667316e5edb3c75a270fe7bca7673b71023ecd36ab6cdf2e40ce3c8e"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
