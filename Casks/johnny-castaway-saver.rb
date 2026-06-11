cask "johnny-castaway-saver" do
  version "0.2.2"
  sha256 "8d7cc4469f3eaf9f7621f2413f655c34b0a26a6fc17f4ec89c903a5340450224"

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
