class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.9"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.9/tn-0.5.9-darwin-arm64.tar.gz"
      sha256 "06a6655faa61fd38be549d95a766f6363eea0aaf0e582d855105ffd53cb4c944"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.9/tn-0.5.9-darwin-x86_64.tar.gz"
      sha256 "ef0294667b4d3c4086acac4fff5c9b3cfcaedd00c82811f6a5fbdef989ab905a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.9/tn-0.5.9-linux-x86_64.tar.gz"
      sha256 "597195f3244b4216340c089d72abfec8dc2e84aceff2260fac90d6aba6fc4b08"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
