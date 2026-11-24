cask "tankard" do
  version "0.9.2"
  sha256 "1d7b08bbfc5ff1cbf3dcb61c8df18897f5a67956117fcb4eec690067b04386a8"

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
