cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "ba04269c1db5fa977099598452ca6600f6caf13091512ddd162477a75f58e89a",
         intel: "dba20bb800d95b92f19d0816e0150d25f74fcf5c2dfc424c0a781d5d90258d13"

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
