class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.13"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.13/tn-0.5.13-darwin-arm64.tar.gz"
      sha256 "20f31d483f6be5de607cf09ec46f0385283d2e599c40080c45a2fc3e40aa08c8"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.13/tn-0.5.13-darwin-x86_64.tar.gz"
      sha256 "d28977f3366720cee7c48180659a23052404b1f667a397ea61dd82ef4c6f88f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.13/tn-0.5.13-linux-x86_64.tar.gz"
      sha256 "269f385b27fc74d80c326f04779a0e8be52eaa66a14674a2ee237e55e4ef68b2"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
