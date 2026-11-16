cask "tankard" do
  version "0.2.0"
  sha256 "11a8079c8a6e3086131f9dba5c0fed50ba8ccb9cd078f8ce430668cae331195a"

  url "https://github.com/d4rkwyng/tankard/releases/download/v#{version}/Tankard.zip"
  name "Tankard"
  desc "Native Homebrew GUI with Intelbrew extras for Intel Macs"
  homepage "https://github.com/d4rkwyng/tankard"

  depends_on macos: :sonoma

  app "Tankard.app"

  zap trash: [
    "~/Library/Caches/net.mindtricks.tankard",
    "~/Library/Logs/Tankard",
    "~/Library/Preferences/net.mindtricks.tankard.plist",
    "~/Library/Saved Application State/net.mindtricks.tankard.savedState",
  ]
end
