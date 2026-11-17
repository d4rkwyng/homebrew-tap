cask "tankard" do
  version "0.7.0"
  sha256 "4de210cfa5adf09b65bea2816501c037925328a112c29f7038654290fdd95714"

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
