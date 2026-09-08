cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "093939661f6a1d488e6b9756fc36c98ec27ad6a507e79878f6e01b7bb42cb2b3",
         intel: "84aeef49551ad9ad0d5cc7e53bd2c5fe471ccbecfdbb5bf76bace31737a8b6dd"

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
