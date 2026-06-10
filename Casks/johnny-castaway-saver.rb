cask "johnny-castaway-saver" do
  version "0.2.1"
  sha256 "9d95a87f121b9c3f8c58fb509a32bc379cb64e024d5c03fcd05ebb0f75738dd4"

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
