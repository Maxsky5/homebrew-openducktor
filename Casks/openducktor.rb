cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "77f34411fcc4b6e16149dbde518e91b6326e4fb8222b431a3c30ebf108437a5e",
         intel: "2d8f099f7de9f68aaa1fa2b4822aa24c97af0b944a5c6f4d7a4bf6f39f0bd44c"

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
