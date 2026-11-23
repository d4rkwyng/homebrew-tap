cask "tankard" do
  version "0.9.1"
  sha256 "f69b68fe54dac59c7527f78e1a38cf7cfc38f61ba065f9b24de731ddb3b4f896"

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
