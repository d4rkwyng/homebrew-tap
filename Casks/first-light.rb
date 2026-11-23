cask "first-light" do
  version "1.0.1"
  sha256 "6f20bddd6ff448e70bca05f719716ce7798209c84fbb821758c9c9130f561a1a"

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
