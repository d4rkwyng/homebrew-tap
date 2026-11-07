cask "johnny-castaway" do
  version "0.2.5"
  sha256 "9d9d9b30a6f38e28198658846bdfda6bb00d0deecf4ba1509d81b3b251a2162d"

  url "https://github.com/d4rkwyng/johnny-castaway-mac/releases/download/v#{version}/JohnnyCastaway-v#{version}.zip"
  name "Johnny Castaway"
  desc "Native recreation of the classic 1992 Sierra/Dynamix screensaver"
  homepage "https://github.com/d4rkwyng/johnny-castaway-mac"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Johnny Castaway.app"
  screen_saver "JohnnyCastaway.saver"

  zap trash: [
    "~/Library/Application Support/JohnnyCastaway",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/JohnnyCastaway",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/net.cyduck.JohnnyCastaway.*.plist",
    "~/Library/Preferences/net.cyduck.JohnnyCastaway.app.plist",
    "~/Library/Saved Application State/net.cyduck.JohnnyCastaway.app.savedState",
  ]

  caveats <<~EOS
    Johnny needs the original game's RESOURCE.MAP / RESOURCE.001 files,
    which are still copyrighted and not bundled. Launch Johnny Castaway.app
    once — it asks for them on first run and sets up the screensaver too.
    How to obtain them:
      https://github.com/d4rkwyng/johnny-castaway-mac#you-must-supply-the-original-game-files
  EOS
end
