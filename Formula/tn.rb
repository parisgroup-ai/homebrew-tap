class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.10.1"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.1/tn-0.10.1-darwin-arm64.tar.gz"
      sha256 "a8aae19fc1ced26afec02f9e248457b931567b4841832d99510786ac2786439b"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.1/tn-0.10.1-darwin-x86_64.tar.gz"
      sha256 "689f01750ee10f34ae814f808591bd6154b8468f538edb9632c5baa581ba4e24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.10.1/tn-0.10.1-linux-x86_64.tar.gz"
      sha256 "970941d4f864da4965179dc4007acb7962b056b8cad4dff1edcf29412788b1d3"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
