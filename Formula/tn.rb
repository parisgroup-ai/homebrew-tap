class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.15"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.15/tn-0.5.15-darwin-arm64.tar.gz"
      sha256 "b1858c32e567f6de5d510c67b2897456d772ccd7d18ae5253726d3067e6dbcd0"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.15/tn-0.5.15-darwin-x86_64.tar.gz"
      sha256 "6733bbf129f886d8925c1f5cb8e35ca01dad6d224f6ab058d467606c170e4ecf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.15/tn-0.5.15-linux-x86_64.tar.gz"
      sha256 "bd9bdb628b5c02a594032b142cfb2c2018a24cd991dd782124217dc3da324a8e"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
