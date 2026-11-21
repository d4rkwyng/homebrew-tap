cask "owlink" do
  version "0.4.1"
  sha256 "d259a6276349ba8f51520ff997954a2a35cda3781e4d460463de1ff0cbfbc131"

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
