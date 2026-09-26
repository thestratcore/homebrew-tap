# Stratcore Homebrew tap

```
brew install --cask thestratcore/tap/stratisland
```

## StratIsland

A Dynamic Island for the Mac notch showing live Claude Code and Codex CLI session state.
Source: https://github.com/thestratcore/StratIsland-swift

The cask's `version`/`sha256` are bumped by that repo's `scripts/release.sh` (pass
`TAP_DIR=/path/to/this/clone`) after each notarized release, and pushed from here.

Not yet submitted to the official `homebrew/cask` repository — that needs the source
repo to clear Homebrew's notability bar first (roughly 75+ GitHub stars, or 30+ forks
or watchers). Until then, this tap is the only way to `brew install` it.
