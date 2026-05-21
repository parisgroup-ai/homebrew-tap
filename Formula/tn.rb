class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.9.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.0/tn-0.9.0-darwin-arm64.tar.gz"
      sha256 "cdf9e348e3ee8b22d27516b25743c937fd05bd46c96acefe0345de120fbd71cb"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.0/tn-0.9.0-darwin-x86_64.tar.gz"
      sha256 "ba1de5a0742280dbb1124eaabcae9aac018219e7646a28dd5879dfe032815cbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.9.0/tn-0.9.0-linux-x86_64.tar.gz"
      sha256 "48b17f59f21046399a53cf8da705345401547e8d0167c8fe8435250feb01e589"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
