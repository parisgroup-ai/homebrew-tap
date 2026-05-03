class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.14"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.14/tn-0.5.14-darwin-arm64.tar.gz"
      sha256 "a996aece2dd3d671753abaeba57640e00425e58f7b0fa0d7cb9d8c6017ebb69f"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.14/tn-0.5.14-darwin-x86_64.tar.gz"
      sha256 "06f47394cb0d1988417b0ab5a0db81fd908a5b40b7bd470cd229b65b2435ae8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.14/tn-0.5.14-linux-x86_64.tar.gz"
      sha256 "953303983daf855bcd0a995e46e202f8e7fce7a3011d53c4ec99609c67d097c6"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
