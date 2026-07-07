cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "c62b7adf6f86364e3d23b82e0dc220723d70f3496706b2441bc67563251f52dc",
         intel: "9ccec71c28cdd9500ed301ece271b5c4655e086ce6375a3f1f4c5db195b8a5b8"

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
