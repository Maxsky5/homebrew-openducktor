cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "6c8a1d649f443318db5303c1685d037cacfc9732de6d7664ff4c52f94028c2ba",
         intel: "ddddf136571ba5772aae11967d0855f119be707b6204e951668a918a31da016a"

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
