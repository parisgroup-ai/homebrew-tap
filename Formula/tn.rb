class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.8"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.8/tn-0.5.8-darwin-arm64.tar.gz"
      sha256 "9d8dafde11ea6fa33c031d3abf9a6b0a89e2f429c0fc9311adcf541336259fea"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.8/tn-0.5.8-darwin-x86_64.tar.gz"
      sha256 "219a7d8680cdae46b21608708d8a398de7a147e92f70231cf964b4dc4d1ac9be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.8/tn-0.5.8-linux-x86_64.tar.gz"
      sha256 "eab6c7eb979651118d05a2fe0d2a1138f09f25662785d2c3057a3bdcdab399bb"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
