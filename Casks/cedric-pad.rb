cask "cedric-pad" do
  version "0.1.1"
  sha256 "69e05a2ba0a27c561640c0a33cf957e1a4b4cbd1ba17560fd60560a679d665d2"

  url "https://github.com/d4rkwyng/cedric-pad/releases/download/v#{version}/Cedric-Pad-#{version}.zip"
  name "Cedric Pad"
  desc "Fast, simple native text editor"
  homepage "https://github.com/d4rkwyng/cedric-pad"

  depends_on macos: :sonoma

  app "Cedric Pad.app"
  binary "#{appdir}/Cedric Pad.app/Contents/Resources/cedric"

  zap trash: [
    "~/Library/Application Support/Cedric",
    "~/Library/Caches/net.mindtricks.cedric",
    "~/Library/HTTPStorages/net.mindtricks.cedric",
    "~/Library/Preferences/net.mindtricks.cedric.plist",
    "~/Library/Saved Application State/net.mindtricks.cedric.savedState",
    "~/Library/WebKit/net.mindtricks.cedric",
  ]
end
