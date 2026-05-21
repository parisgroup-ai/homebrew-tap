class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.8.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.8.0/tn-0.8.0-darwin-arm64.tar.gz"
      sha256 "454d8028b90562538c53add5531de4c221b21dd22050fb1736fa5f880370cbe3"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.8.0/tn-0.8.0-darwin-x86_64.tar.gz"
      sha256 "15e826f82fb7497346e7ef94066c4957e8dc106974d78efd7a6ce4211b58baa5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.8.0/tn-0.8.0-linux-x86_64.tar.gz"
      sha256 "aae0ed5669388fb863011d16f9acf3a0605ad299145e84c0a5cfc2a1e9ae4973"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
