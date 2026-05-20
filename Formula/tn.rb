class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.6.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.0/tn-0.6.0-darwin-arm64.tar.gz"
      sha256 "24d376535312c9ac523c04d11cef56bc51933bae4ca6c48482101f202a474cdb"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.0/tn-0.6.0-darwin-x86_64.tar.gz"
      sha256 "36656fcc0313679acda418f97d5a6e85a240f7d12832c5f8310bb75fe0717c36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.0/tn-0.6.0-linux-x86_64.tar.gz"
      sha256 "3ad3b51caa150962896f61ef48b86a93d054bacd8ef5980b5d7e6ec58aba551e"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
