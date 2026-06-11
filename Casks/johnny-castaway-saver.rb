cask "johnny-castaway-saver" do
  version "0.2.5"
  sha256 "02dc162779cde57c09ce73468b0959d5a0e3279310ce3c50b457471cf370bd08"

  url "https://github.com/d4rkwyng/johnny-castaway-mac/releases/download/v#{version}/JohnnyCastaway-saver-v#{version}.zip"
  name "Johnny Castaway Screensaver"
  desc "Native recreation of the classic 1992 Sierra/Dynamix screensaver"
  homepage "https://github.com/d4rkwyng/johnny-castaway-mac"

  depends_on macos: :sonoma

  screen_saver "JohnnyCastaway.saver"

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
