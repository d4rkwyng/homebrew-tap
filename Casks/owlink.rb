cask "owlink" do
  version "0.5.2"
  sha256 "27f4276f3c537b87f1b225448354596274d0f0b525f28087fce89d2ab3211dd9"

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
