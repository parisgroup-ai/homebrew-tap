# parisgroup-ai Homebrew Tap

Homebrew formulae for parisgroup-ai CLI tools.

## Install

```bash
brew install parisgroup-ai/tap/tn
```

This is equivalent to:

```bash
brew tap parisgroup-ai/tap
brew install tn
```

## Formulae

| Formula | Description | Upstream |
|---|---|---|
| `tn` | TaskNotes CLI (markdown task files, YAML frontmatter, Obsidian-compatible) | [parisgroup-ai/tasknotes-cli](https://github.com/parisgroup-ai/tasknotes-cli) |

## How updates land

Each upstream release tag (`v*`) triggers a workflow that:

1. Builds pre-stripped binaries for `darwin-arm64`, `darwin-x86_64`, and `linux-x86_64`.
2. Uploads the tarballs and `.sha256` companions to the GitHub release.
3. Rewrites `Formula/<name>.rb` in this tap with the new `version`, `url`, and `sha256` values, then commits and pushes.

Manual edits to `Formula/*.rb` outside of the update workflow will be overwritten on the next release.
