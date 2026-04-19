class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.5"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.5/tn-0.5.5-darwin-arm64.tar.gz"
      sha256 "07c8d31606f07a17a47140cb0a30d5ac14ba332171626b12a6bd6b174b3a289f"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.5/tn-0.5.5-darwin-x86_64.tar.gz"
      sha256 "bbe577e8d3e55cfce0d2ece62672f7649e8c76543472dc5e3750349aa3bbe14f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.5/tn-0.5.5-linux-x86_64.tar.gz"
      sha256 "16e3aa2c417b03e6ee0390fd7f315249350f61ca95359354384520bfbd5b5320"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
