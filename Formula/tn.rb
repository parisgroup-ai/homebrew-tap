class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.7.1"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.7.1/tn-0.7.1-darwin-arm64.tar.gz"
      sha256 "96034648e10a490e95130be806af5bc53a26b5950ba49462126215be6c88f99d"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.7.1/tn-0.7.1-darwin-x86_64.tar.gz"
      sha256 "34fcc155bf5666390076e88d76f60b0781289db7094ec922c75df6e0f9a2d861"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.7.1/tn-0.7.1-linux-x86_64.tar.gz"
      sha256 "6aeff01b74d9526947bca40ae9d99303a22b9ea404b366134f0915c0e7051420"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
