class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.2"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  # Intel macOS dropped in v0.5.2: macos-13 runners in the GitHub Actions pool
  # were saturated/deprecated and the Intel build job stayed queued indefinitely.
  # Intel Mac users can `cargo install --git https://github.com/parisgroup-ai/tasknotes-cli`.
  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.2/tn-0.5.2-darwin-arm64.tar.gz"
      sha256 "13aae344cb0e3c12d939a8ab73299f0d037c20bf70a9b5436eea544338e7bdda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.2/tn-0.5.2-linux-x86_64.tar.gz"
      sha256 "4309dc90353db94fd8b48f47ed8213dfa459e4da9633e43d454410cce663f7dd"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
