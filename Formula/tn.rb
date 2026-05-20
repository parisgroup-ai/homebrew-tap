class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.6.3"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.3/tn-0.6.3-darwin-arm64.tar.gz"
      sha256 "b254adc7cee307d6c7eee64dcb3fd0f9d2c6c40e7a53456bd277d05af783992b"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.3/tn-0.6.3-darwin-x86_64.tar.gz"
      sha256 "4187757b79841f26a6da998bf6daca77509079ab881123ae16f2dd7b4bdeff42"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.3/tn-0.6.3-linux-x86_64.tar.gz"
      sha256 "959ad326eb30aca0445fedb1151011fdf2dee3fdd1ce4cf88aee857804ceac2a"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
