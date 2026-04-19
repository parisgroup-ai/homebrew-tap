class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.6"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.6/tn-0.5.6-darwin-arm64.tar.gz"
      sha256 "7c2cab73fbde64533cf0957f45c9c5cfa94d15b50d0d22ed93c134d9d883f3b8"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.6/tn-0.5.6-darwin-x86_64.tar.gz"
      sha256 "be176133853baab568d04a20eaf1f99854646ce59933629b3274f695469af752"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.6/tn-0.5.6-linux-x86_64.tar.gz"
      sha256 "43f89610af820651b41cb75d8a814591e364779bb4718377ef5a5ef83078784d"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
