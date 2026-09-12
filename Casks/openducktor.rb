cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "28a6c399be8ee2ce86a5b2863ec686bf20abf84d024187e4ac111ddf92bcf055",
         intel: "9c51ba361205972259b7c1cab733ff0aaab485a61286ea3d6222c711cf260475"

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
