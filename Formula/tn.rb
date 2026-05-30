class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.12.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.12.0/tn-0.12.0-darwin-arm64.tar.gz"
      sha256 "e98c6da019d8ed861a555e7351ae30dc61e176e4905d0813361c2304a895121c"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.12.0/tn-0.12.0-darwin-x86_64.tar.gz"
      sha256 "2df4e989a64ee8b58a17fd583b95b53ef8c14bed31e41e4708bd1487c504904f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.12.0/tn-0.12.0-linux-x86_64.tar.gz"
      sha256 "c939e43587680be20a0fbbaea4e321441f147e4dd4a412503dc77469dec8fd53"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
