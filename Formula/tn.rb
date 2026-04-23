class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.10"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.10/tn-0.5.10-darwin-arm64.tar.gz"
      sha256 "ac4b1e504fea42662bd14906d0cf043ae7a5cbdd194a8fb3156d1b75b33d1436"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.10/tn-0.5.10-darwin-x86_64.tar.gz"
      sha256 "ec9f10ddff6f09b443556ab707fbec6bac0f0525c53ab7cbabeccd8b6b6070d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.10/tn-0.5.10-linux-x86_64.tar.gz"
      sha256 "58a87e96d4ff626a1de56a0ae94b9ea7423a0bd285279748421939e225b5a22d"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
