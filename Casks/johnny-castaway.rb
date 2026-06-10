cask "johnny-castaway" do
  version "0.2.1"
  sha256 "92384f4e284208971b2df151ed00d08578ae64c6bdcb2c2f2397be6055d1ef6a"

  url "https://github.com/d4rkwyng/johnny-castaway-mac/releases/download/v#{version}/JohnnyCastaway-app-v#{version}.zip"
  name "Johnny Castaway"
  desc "Native recreation of the classic 1992 Sierra/Dynamix screensaver, as an app"
  homepage "https://github.com/d4rkwyng/johnny-castaway-mac"

  depends_on macos: ">= :sonoma"

  app "Johnny Castaway.app"

  caveats <<~EOS
    Johnny needs the original game's RESOURCE.MAP / RESOURCE.001 files,
    which are still copyrighted and not bundled. See the README for how
    to obtain and import them:
      https://github.com/d4rkwyng/johnny-castaway-mac#you-must-supply-the-original-game-files
  EOS
end
