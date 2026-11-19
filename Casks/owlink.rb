cask "owlink" do
  version "0.1.2"
  sha256 "538a23becbce3ee497ee96867ab148fcd8c06a50b7e7c3bd6222174e5c0a45f8"

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
