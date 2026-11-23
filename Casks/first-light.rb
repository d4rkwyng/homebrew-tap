cask "first-light" do
  version "1.0.2"
  sha256 "d8ac5944e8fb24388e71bae957ba127357837db53f6ad02b18cd717f638ce364"

  url "https://github.com/d4rkwyng/first-light/releases/download/v#{version}/First-Light-#{version}.zip"
  name "First Light"
  desc "Living Apple-1 — the 1976 machine chip-by-chip, with real emulation"
  homepage "https://github.com/d4rkwyng/first-light"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "First Light.app"

  zap trash: [
    "~/Library/Preferences/net.cyduck.FirstLight.plist",
    "~/Library/Saved Application State/net.cyduck.FirstLight.savedState",
  ]
end
