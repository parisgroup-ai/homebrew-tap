class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.9.2"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.2/tn-0.9.2-darwin-arm64.tar.gz"
      sha256 "e2c4b21c17930b3d5571e0b5ff487fc657ec438f3b769cc27b3561c998d040d1"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.2/tn-0.9.2-darwin-x86_64.tar.gz"
      sha256 "55f38eeca6175e94d836ee20309e69552cd17cc381396bcf48b72e971b66fe5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.2/tn-0.9.2-linux-x86_64.tar.gz"
      sha256 "0e3b795f501283698a909a83e9ee7c215e81f152a9a5780528d3a8ba05a9aef7"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
