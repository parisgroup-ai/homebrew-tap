class Tn < Formula
  desc "TaskNotes CLI — markdown task files with YAML frontmatter (Obsidian-compatible)"
  homepage "https://github.com/parisgroup-ai/tasknotes-cli"
  version "0.5.4"
  license "MIT"

  # Binaries are produced by .github/workflows/release.yml in the tasknotes-cli
  # repo on every `v*` tag. The url/sha256 fields below are rewritten in-place
  # by the `update-homebrew-tap` job after each release.

  on_macos do
    on_arm do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.4/tn-0.5.4-darwin-arm64.tar.gz"
      sha256 "e6f3000aa0b373139d5886c38c02dfb7f06c230be8218186418631f40e94353e"
    end
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.4/tn-0.5.4-darwin-x86_64.tar.gz"
      sha256 "9bb87e5f8992fcfa6ebd0b29c0d70d133d0da6b50e76ebb10b2aa12a8d9d78ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/parisgroup-ai/tasknotes-cli/releases/download/v0.5.4/tn-0.5.4-linux-x86_64.tar.gz"
      sha256 "b43a6ca4bc02b686142c674f05b0d8b93a2d6606607b2e73b26f320970bd0f66"
    end
  end

  def install
    bin.install "tn"
  end

  test do
    assert_match(/tasknotes/i, shell_output("#{bin}/tn --version"))
  end
end
