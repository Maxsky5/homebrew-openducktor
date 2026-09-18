cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "2475bc53eb6c0e379c8bed346b1efd67c02da00dd16177201b326a21902cafca",
         intel: "90c4247770ad9c3c72f5c771e887b647d0908ec4c7e4581200d5651d3dbfce44"

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
