cask "tankard" do
  version "0.9.3"
  sha256 "8c5b404ce9b1809f6e2ec14a7beb6e11b0ca7dac650574ee61404d5a26f14b28"

  url "https://github.com/d4rkwyng/tankard/releases/download/v#{version}/Tankard.zip"
  name "Tankard"
  desc "Native app for Homebrew, with Intelbrew support"
  homepage "https://github.com/d4rkwyng/tankard"

  depends_on macos: :sonoma

  app "Tankard.app"

  zap trash: [
    "~/Library/Application Support/net.mindtricks.tankard",
    "~/Library/Caches/net.mindtricks.tankard",
    "~/Library/HTTPStorages/net.mindtricks.tankard",
    "~/Library/Logs/Tankard",
    "~/Library/Preferences/net.mindtricks.tankard.plist",
    "~/Library/Saved Application State/net.mindtricks.tankard.savedState",
  ]
end
