cask "owlink" do
  version "0.4.0"
  sha256 "143add3ab2134b88b59a2f81b3e679fee45d8a7178127377ac715c92f245d19a"

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
