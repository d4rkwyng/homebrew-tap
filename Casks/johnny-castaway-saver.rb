cask "johnny-castaway-saver" do
  version "0.2.6"
  sha256 "cf51c5d8c58fc45c17c04e64544c0dbd1893a23f13e4f6ae677c4819f168183b"

  url "https://github.com/d4rkwyng/johnny-castaway-mac/releases/download/v#{version}/JohnnyCastaway-saver-v#{version}.zip"
  name "Johnny Castaway Screensaver"
  desc "Native recreation of the classic 1992 Sierra/Dynamix screensaver"
  homepage "https://github.com/d4rkwyng/johnny-castaway-mac"

  conflicts_with cask: "johnny-castaway"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  screen_saver "JohnnyCastaway.saver"

  zap trash: [
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Application Support/JohnnyCastaway",
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/net.cyduck.JohnnyCastaway.*.plist",
  ]

  caveats <<~EOS
    This cask installs only the screensaver. For the easiest setup,
    install the johnny-castaway cask instead — it bundles the app AND
    this screensaver, and the app's welcome screen imports the resource
    files for both with one drag & drop:
      brew install --cask d4rkwyng/tap/johnny-castaway

    Otherwise: select it in System Settings → Screen Saver (under
    "Other"), then use Options… to import the original game's
    RESOURCE.MAP / RESOURCE.001 — still copyrighted, not bundled. See:
      https://github.com/d4rkwyng/johnny-castaway-mac#you-must-supply-the-original-game-files
  EOS
end
