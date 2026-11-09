cask "atlas" do
  version "0.1.1"
  sha256 "93ca5469c051ab5baa242a33e58430bfe05aba38270d2ef999730dbb521e8d6f"

  url "https://github.com/InsaneArts/atlas/releases/download/v#{version}/Atlas-#{version}-macos.zip"
  name "Atlas"
  desc "Hidden second login where AI agents use apps without touching your desktop"
  homepage "https://atlas.insanearts.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Atlas.app"
  binary "#{appdir}/Atlas.app/Contents/MacOS/atlas"

  uninstall quit: "com.insanearts.atlas"

  zap trash: [
    "~/.config/atlas.toml",
    "~/Library/Application Support/Atlas",
    "~/Library/Caches/Atlas",
    "~/Library/Preferences/com.insanearts.atlas.plist",
  ]

  caveats <<~EOS
    Open Atlas from Applications to set it up, or run:
      atlas init

    Atlas updates itself with `atlas update`.

    Before `brew uninstall --cask atlas`, run `atlas uninstall` so the helper
    is logged out and its services are removed. `atlas uninstall --remove-helper`
    also deletes the helper account.
  EOS
end
