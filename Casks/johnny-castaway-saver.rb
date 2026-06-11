cask "johnny-castaway-saver" do
  version "0.2.4"
  sha256 "d7a275568c877f83bd9cd0d78d60f5ab59d7b6af62d44a6f57d5681c0a4cd042"

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
