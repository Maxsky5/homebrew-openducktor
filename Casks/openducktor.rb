cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "1bf3c5a987f6a679e30671014fcae9946b6d5c47990957676ceb294b8a7c9a7d",
         intel: "0e1c3a89777bffffd9963a91fc4ff9389822bfb8829bb5b68101ca84bb9fff70"

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
