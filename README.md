# parisgroup-ai Homebrew Tap

Homebrew formulae for parisgroup-ai CLI tools.

## Install

```bash
# Needs GitHub credentials (`gh auth login` or HOMEBREW_GITHUB_API_TOKEN).
# Binaries live in the private repo parisgroup-ai/tasknotes-cli.
brew install parisgroup-ai/tap/tn
```

This is equivalent to:

```bash
brew tap parisgroup-ai/tap
brew install tn
```

A plain `url` to `github.com/.../releases/download/...` **404s** on that private
repo. `HOMEBREW_GITHUB_API_TOKEN` does not authenticate that URL. The formula
uses the Releases assets API instead (`lib/private_release_download_strategy.rb`).

## Formulae

| Formula | Description | Upstream |
|---|---|---|
| `tn` | TaskNotes CLI (markdown task files, YAML frontmatter, Obsidian-compatible) | [parisgroup-ai/tasknotes-cli](https://github.com/parisgroup-ai/tasknotes-cli) |

## How updates land

Each upstream release tag (`v*`) triggers a workflow that:

1. Builds pre-stripped binaries for `darwin-arm64`, `darwin-x86_64`, and `linux-x86_64`.
2. Uploads the tarballs and `.sha256` companions to the GitHub release.
3. Rewrites `Formula/<name>.rb` in this tap with the new `version`, `url`, and `sha256` values, then commits and pushes.

The bump job only rewrites `version`, `url`, and `sha256` in `Formula/tn.rb`.
Keep `using: GitHubPrivateRepositoryReleaseDownloadStrategy` on the `url` line
(after `.tar.gz"`) so the regex leaves it alone. Do not put the strategy in
`Formula/` if a future job starts rewriting the whole file — it lives in `lib/`.
