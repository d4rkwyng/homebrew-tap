cask "tankard" do
  version "0.8.8"
  sha256 "dacff876dbf7c010004ac177f84c587b2e972dff87e4aa23b7b4356f1daffbf5"

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
