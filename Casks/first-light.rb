cask "first-light" do
  version "1.0.0"
  sha256 "4bd94feaee9c7825313798e51b527c5971a103ef7ba71b8e9758479966f12877"

  url "https://github.com/d4rkwyng/first-light/releases/download/v#{version}/First-Light-#{version}.zip"
  name "First Light"
  desc "Living Apple-1 — the 1976 machine chip-by-chip, with real emulation"
  homepage "https://github.com/d4rkwyng/first-light"

  depends_on macos: ">= :sequoia"

  app "First Light.app"

  zap trash: [
    "~/Library/Preferences/net.cyduck.FirstLight.plist",
    "~/Library/Saved Application State/net.cyduck.FirstLight.savedState",
  ]
end
