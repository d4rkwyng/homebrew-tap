cask "cedric-pad" do
  version "0.1.0"
  sha256 "b5a0572ec4ecaf64906695704845356d944eb8fd68d7d5a00c4b9f5ae6922de5"

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
