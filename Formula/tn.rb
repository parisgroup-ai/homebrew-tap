class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.7"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.7/tn-0.5.7-darwin-arm64.tar.gz"
      sha256 "ba36dfd23cd36f993de803292bff228374c2e976d4c0ce7e36672000793d93f8"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.7/tn-0.5.7-darwin-x86_64.tar.gz"
      sha256 "c27ae2759467c39bee93aed472fa2c3a40486836adac0e7eb885d0dc0c5376c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.7/tn-0.5.7-linux-x86_64.tar.gz"
      sha256 "2e2ab7a2ef00e6d8cbc7983c115efaef61acdaf1ad22ea0292c1ce153353b792"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
