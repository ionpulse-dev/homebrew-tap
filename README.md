# Homebrew tap

Homebrew formulas by [ionpulse-dev](https://github.com/ionpulse-dev).

## Formulas

| Formula | What it is |
|:--|:--|
| [waymark](https://github.com/ionpulse-dev/waymark) | A knowledge base and memory for AI agents: an MCP server over Markdown in Git |

## Install

```bash
brew install ionpulse-dev/tap/waymark
```

This adds the tap and installs the formula in one step. To add the tap alone: `brew tap ionpulse-dev/tap`.

## Requirements

macOS on Apple silicon. The formulas install prebuilt binaries.

## Update and remove

```bash
brew upgrade waymark
brew uninstall waymark
brew untap ionpulse-dev/tap
```

## For maintainers

`Formula/waymark.rb` comes from `packaging/homebrew/waymark.rb` in the waymark repository. For each release, set the version and the SHA-256 checksum of the release archive, then commit here.

## License

MIT. See the license of each project for its own terms.
