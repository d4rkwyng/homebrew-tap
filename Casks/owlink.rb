cask "owlink" do
  version "0.2.0"
  sha256 "16bda89e752defabff68570660257e8f27b34837402870539eb91bcef493feea"

  url "https://github.com/d4rkwyng/owlink/releases/download/v#{version}/OwlInk-#{version}.zip"
  name "OwlInk"
  desc "Fast, simple native text editor"
  homepage "https://github.com/d4rkwyng/owlink"

  depends_on macos: :sonoma

  app "OwlInk.app"
  binary "#{appdir}/OwlInk.app/Contents/Resources/cedric"

  zap trash: [
    "~/Library/Application Support/Cedric",
    "~/Library/Caches/net.mindtricks.cedric",
    "~/Library/HTTPStorages/net.mindtricks.cedric",
    "~/Library/Preferences/net.mindtricks.cedric.plist",
    "~/Library/Saved Application State/net.mindtricks.cedric.savedState",
    "~/Library/WebKit/net.mindtricks.cedric",
  ]
end
