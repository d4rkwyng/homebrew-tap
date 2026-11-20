cask "owlink" do
  version "0.3.0"
  sha256 "9d8adc0cb59cbcb9facfb1d8e269f28be93396fa64286ca16bb5c2ee05efd14a"

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
