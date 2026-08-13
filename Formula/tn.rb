class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.13.5"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.5/tn-0.13.5-darwin-arm64.tar.gz"
      sha256 "445c3e09d4dd0fa284116835b7f8808f554be2a0930280b436e7acfdad187a76"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.5/tn-0.13.5-darwin-x86_64.tar.gz"
      sha256 "fa44f0287dbe6a53fd03600dacea39255d156f49cab63ca81efb9f73ea8b894c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.5/tn-0.13.5-linux-x86_64.tar.gz"
      sha256 "30dff5b55e9c850624fb8f11e12798b69a0ff9d0bc7538fa0d241e053de520f2"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
