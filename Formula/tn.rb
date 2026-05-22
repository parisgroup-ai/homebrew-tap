class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.9.4"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.4/tn-0.9.4-darwin-arm64.tar.gz"
      sha256 "977c4e11adaab84e0e40ede98dcf9de961fb42e977c65339403c48e5584bdb96"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.4/tn-0.9.4-darwin-x86_64.tar.gz"
      sha256 "69a83a311e85e2e2fe342d937f3259022c6354edd1d3ea7a2886fe23afbb089f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.4/tn-0.9.4-linux-x86_64.tar.gz"
      sha256 "8e6062108eee8e9a95764fd397762e26ab753eb69ab6ddc56539e6dc4f55ddf7"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
