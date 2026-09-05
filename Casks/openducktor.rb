cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "ac69b140dc5382afe7a0b67af7b75ee4c0e909c0a4f679cfd4ce66abe6fd2eaa",
         intel: "10750a139c3179746a6716eb92545a2993ad14bf0699acc7df14dd9f28dce607"

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
