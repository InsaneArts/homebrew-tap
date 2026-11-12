cask "atlas" do
  version "0.1.3"
  sha256 "c90356f9afa5f50ec8f49cc812aa6f7ee8d0acc8e752f47683cbc57afe0735f3"

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

    To uninstall, run `atlas uninstall` first, so the helper is logged out and
    its services are removed, then `brew uninstall --cask --force atlas`.
    `atlas uninstall --remove-helper` also deletes the helper account.
  EOS
end
