class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.6.2"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.2/tn-0.6.2-darwin-arm64.tar.gz"
      sha256 "8c34084dad2530f94e1751a6d5342f41be399121a464861522c9dad3c7607e9f"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.2/tn-0.6.2-darwin-x86_64.tar.gz"
      sha256 "cc87786b17a17eae8cbf6bffabad390919b50fe01e4ceeadaeab614277f0fea2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.6.2/tn-0.6.2-linux-x86_64.tar.gz"
      sha256 "99d07a3b3eb1648d66c8226dd263dee16fab561fb3e0228a375223853c7069fd"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
