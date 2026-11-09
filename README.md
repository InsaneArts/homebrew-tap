# InsaneArts Homebrew tap

Homebrew casks for [InsaneArts](https://github.com/InsaneArts) apps.

## Atlas

[Atlas](https://atlas.insanearts.io/) gives AI agents a hidden second login on your Mac, where they open apps, look, click and type without touching your desktop.

```sh
brew tap insanearts/tap
brew trust insanearts/tap
brew install --cask insanearts/tap/atlas
```

Homebrew loads casks from a tap outside its own only once you trust it; `brew trust` covers this tap's casks.

Then open Atlas from Applications to set it up, or run `atlas init`.

- **Updates:** Atlas updates itself with `atlas update`, so `brew upgrade` leaves it alone.
- **Uninstall:** run `atlas uninstall` first. It logs the helper out and removes its services; `atlas uninstall --remove-helper` also deletes the helper account. Then run `brew uninstall --cask atlas`.
- **Requirements:** macOS 14 or later. Atlas.app must be in `/Applications`, where the helper account can run it too.

Atlas can also be installed without Homebrew:

```sh
curl -fsSL https://atlas.insanearts.io/install.sh | sh
```
