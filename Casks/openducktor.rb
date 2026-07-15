cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "054a7060801d02f2775496a6bc08a7e3876c63045226105ea34e6711bd55942e",
         intel: "74426182856411f4cff3f2de1976569898d4f7ad76ee75c068e59163b39bc542"

  url "https://github.com/Maxsky5/openducktor/releases/download/v#{version}/OpenDucktor-#{version}-mac-#{arch}.dmg"
  name "OpenDucktor"
  desc "Task-first agentic development environment"
  homepage "https://github.com/Maxsky5/openducktor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "OpenDucktor.app"

  zap trash: [
    "~/.openducktor",
    "~/Library/Preferences/com.openducktor.app.plist",
    "~/Library/Saved Application State/com.openducktor.app.savedState",
  ]
end
