# InsaneArts Homebrew tap

Homebrew casks for [InsaneArts](https://github.com/InsaneArts) apps.

## Atlas

[Atlas](https://atlas.insanearts.io/) gives AI agents a hidden second login on your Mac, where they open apps, look, click and type without touching your desktop.

```sh
brew trust insanearts/tap && brew install --cask insanearts/tap/atlas
```

Homebrew loads casks from a tap outside its own only once you trust it; `brew install` then adds the tap by itself.

Then open Atlas from Applications to set it up, or run `atlas init`.

- **Updates:** Atlas updates itself with `atlas update`, so `brew upgrade` leaves it alone.
- **Uninstall:** run `atlas uninstall` first. It logs the helper out, removes its services and moves Atlas.app to the Trash; `atlas uninstall --remove-helper` also deletes the helper account. Then run `brew uninstall --cask --force atlas` to remove Homebrew's link and record.
- **Requirements:** macOS 14 or later. Atlas.app must be in `/Applications`, where the helper account can run it too.

Atlas can also be installed without Homebrew:

```sh
curl -fsSL https://atlas.insanearts.io/install.sh | sh
```
