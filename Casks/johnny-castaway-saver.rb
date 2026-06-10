cask "johnny-castaway-saver" do
  version "0.2.0"
  sha256 "da1d8b714da51a4aa0f1d817366029fb973ccd00b0c991b6df6f907e696c6351"

  url "https://github.com/d4rkwyng/johnny-castaway-mac/releases/download/v#{version}/JohnnyCastaway-saver-v#{version}.zip"
  name "Johnny Castaway Screensaver"
  desc "Native recreation of the classic 1992 Sierra/Dynamix screensaver"
  homepage "https://github.com/d4rkwyng/johnny-castaway-mac"

  depends_on macos: ">= :sonoma"

  screen_saver "JohnnyCastaway.saver"

  caveats <<~EOS
    Select it in System Settings → Screen Saver (under "Other"), then use
    Options… to import the original game's RESOURCE.MAP / RESOURCE.001 —
    they are still copyrighted and not bundled. See:
      https://github.com/d4rkwyng/johnny-castaway-mac#you-must-supply-the-original-game-files
  EOS
end
