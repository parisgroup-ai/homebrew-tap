class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.10.2"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.2/tn-0.10.2-darwin-arm64.tar.gz"
      sha256 "6bfbc24ef910e8a0d572b7d0158f492ba9b31c7666304a3bd4da19e8288a9907"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.2/tn-0.10.2-darwin-x86_64.tar.gz"
      sha256 "a989650d4872b5ec9c6b3c73baea5ab1c301a558dd62e666bde7d28c5728884d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.2/tn-0.10.2-linux-x86_64.tar.gz"
      sha256 "41062e0b99702ebb10ab16f9c80a6e406e27f67d78b35ec567404eae0eacfe7c"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
