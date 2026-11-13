cask "locky" do
  version "0.1.0"
  sha256 "61ec2df37f795ad38c5ff5d79a922be3351c0a30875580c714af6c599ea52be8"

  url "https://github.com/InsaneArts/locky/releases/download/v#{version}/Locky-#{version}.zip"
  name "Locky"
  desc "Lock screen with themes and widgets written in Lua"
  homepage "https://github.com/InsaneArts/locky"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Locky.app"

  uninstall quit: "com.tornikegomareli.Locky"

  zap trash: [
    "~/.config/locky",
    "~/.local/share/locky",
    "~/Library/Application Support/Locky",
    "~/Library/Caches/Locky",
    "~/Library/Logs/Locky",
    "~/Library/Preferences/com.tornikegomareli.Locky.plist",
  ]

  caveats <<~EOS
    Open Locky from Applications. The first launch opens the Welcome, where
    you make Locky your lock screen.

    While Locky's lock shows, the macOS lock screen is off. If something goes
    wrong on the lock screen, press Control-Option-Command-Q to switch to the
    macOS lock screen.

    Locky updates itself, so `brew upgrade` leaves it alone.
  EOS
end
