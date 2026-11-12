cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "ca4ee1218b190cf35903ffb28cdea0368b7895f9bd605bea6c4575d981565d16",
         intel: "eceaa065ab1286aca9daf7d185d539b5ace359f9cc0e71cf88dfb8e0ed1ae45d"

  url "https://github.com/Maxsky5/openducktor/releases/download/v#{version}/OpenDucktor-#{version}-mac-#{arch}.dmg"
  name "OpenDucktor"
  desc "Task-first agentic development environment"
  homepage "https://github.com/Maxsky5/openducktor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "OpenDucktor.app"

  zap trash: [
    "~/.openducktor",
    "~/Library/Preferences/com.openducktor.app.plist",
    "~/Library/Saved Application State/com.openducktor.app.savedState",
  ]
end
