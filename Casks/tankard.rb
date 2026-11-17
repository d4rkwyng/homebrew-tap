cask "tankard" do
  version "0.3.1"
  sha256 "dcc33a57a57a3a2600cc5475ea78d30df906c5cef1d97d295b4a8a1427389663"

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
