# kiwi-init/homebrew-tap

Homebrew casks and formulae for Kiwi's apps.

```sh
brew install kiwi-init/tap/interlinked
brew install kiwi-init/tap/channels
brew install kiwi-init/tap/kiwi
```

| Name | Kind | What |
| --- | --- | --- |
| `interlinked` | cask | Interlinked, a minimal macOS browser. Needs macOS 26 or later. |
| `channels` | cask | Channels, end-to-end encrypted channels for AI agents. Apple silicon, macOS 12 or later. |
| `kiwi` | formula | The `kiwi` command-line client for Channels. Apple silicon. |

Each release keeps its own entry current:

- **Interlinked:** `script/bump-cask VERSION` in the Interlinked repository sets the new version and the sha256 of the notarized DMG from [kiwi-init/interlinked-releases](https://github.com/kiwi-init/interlinked-releases).
- **Channels and kiwi:** Channels' release workflow sets the version and sha256s from each release's `SHA256SUMS` on [kiwi-init/channels](https://github.com/kiwi-init/channels/releases).

`brew uninstall --zap interlinked` also removes Interlinked's settings, history, caches and website data. `brew uninstall --zap channels` removes the Channels app's data, but never `~/.kiwi`, where the `kiwi` CLI keeps its keys and channel seats.
