class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.10.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.0/tn-0.10.0-darwin-arm64.tar.gz"
      sha256 "f8af3ab6d20a047b38572d02e2d93b14609ecb5e723637e8bf33769e1b091eb2"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.0/tn-0.10.0-darwin-x86_64.tar.gz"
      sha256 "5cf71eaf7e369cb408fda88492ed028ace4f5a7751b410f7463e366b38d6cd4c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.0/tn-0.10.0-linux-x86_64.tar.gz"
      sha256 "17f46fe04823fbb7ae742d272ab51f020987dd8641affeed04539c59a01fc88a"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
