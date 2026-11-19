cask "tankard" do
  version "0.8.6"
  sha256 "00470add51d75cd168ae15b429b456aa11966c5b44b6f05a9c22b8687435c5f0"

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
