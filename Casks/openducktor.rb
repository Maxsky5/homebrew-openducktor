cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "3dae24b8b784ac1cffeda5d9e6973217ce21d274e04aa3ce6504160f1b17ace3",
         intel: "f41e15ed8537cd1409e35e76c123ab0ad73c71843ec28a7c16dcfb86f12a6096"

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
