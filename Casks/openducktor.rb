cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "f102cc4dcdbef2eb5f648326de7b5f9b9e405ec1889afb5fbabe22ddba240d7a",
         intel: "359066ac29459ae78b5580166a73ed169e0ea84aaef4ef42de7d9a45d9c3a27e"

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
