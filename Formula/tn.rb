class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.13.3"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.3/tn-0.13.3-darwin-arm64.tar.gz"
      sha256 "689732f1ade0297bd73dd3662157c2866236b39f7be9f6ac77f49d0367206acb"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.3/tn-0.13.3-darwin-x86_64.tar.gz"
      sha256 "948aab4951c19f0578687299318fdeba75727ef47628c25d20d03d621798cc62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.13.3/tn-0.13.3-linux-x86_64.tar.gz"
      sha256 "75e3b55b9e3f8b37e4f0459fa5c384b7e022f9303d85b712fbd5713a5d81c69d"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
