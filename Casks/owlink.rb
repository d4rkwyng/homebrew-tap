cask "owlink" do
  version "0.5.0"
  sha256 "1bf7e37486ee9af8a3af2e1e332fc3378caf10c4112aa02f78ba2ee099c3bb3c"

  url "https://github.com/d4rkwyng/owlink/releases/download/v#{version}/Owlink-#{version}.zip"
  name "Owlink"
  desc "Fast, simple native text editor"
  homepage "https://github.com/d4rkwyng/owlink"

  depends_on macos: :sonoma

  app "Owlink.app"
  binary "#{appdir}/Owlink.app/Contents/Resources/cedric"

  zap trash: [
    "~/Library/Application Support/Cedric",
    "~/Library/Caches/net.mindtricks.cedric",
    "~/Library/HTTPStorages/net.mindtricks.cedric",
    "~/Library/Preferences/net.mindtricks.cedric.plist",
    "~/Library/Saved Application State/net.mindtricks.cedric.savedState",
    "~/Library/WebKit/net.mindtricks.cedric",
  ]
end
