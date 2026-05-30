class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.13.0"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.0/tn-0.13.0-darwin-arm64.tar.gz"
      sha256 "dc705002640497a66303e71fb4486da0601d9093409306d3834888fe333656fb"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.0/tn-0.13.0-darwin-x86_64.tar.gz"
      sha256 "fcda10a09334d71bb89988956b7fedf8658f4d092f1b8f86c82f124f151fcb90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.0/tn-0.13.0-linux-x86_64.tar.gz"
      sha256 "6779e377894d8ecf6e8cb4d192c861498091b4467db9044f40c716444e2e70b1"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
