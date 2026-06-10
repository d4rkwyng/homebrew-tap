cask "johnny-castaway" do
  version "0.2.0"
  sha256 "be85efe48089ebd43525f36ac6f82c788708094760411ba8be775ddb4c471584"

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
