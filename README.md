# kiwi-init/homebrew-tap

Homebrew casks for Kiwi's apps.

```sh
brew install kiwi-init/tap/interlinked
```

| Cask | App |
| --- | --- |
| `interlinked` | Interlinked, a minimal macOS browser. Needs macOS 26 or later. |

Each Interlinked release updates its cask: `script/bump-cask VERSION` in the Interlinked repository sets the new version and the sha256 of the notarized DMG from [kiwi-init/interlinked-releases](https://github.com/kiwi-init/interlinked-releases). The first release is not out yet, so the cask won't install until it is.

`brew uninstall --zap interlinked` also removes Interlinked's settings, history, caches and website data.
