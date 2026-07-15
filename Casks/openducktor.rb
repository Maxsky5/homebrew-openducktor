cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "c4d8a8e1a52c03ff02fd140af9d125ed240f62bff27782573b8dbf6173183ae2",
         intel: "b438b287cb87dcc6a9c9d9a9b4d344fd454e3ef9f4c85cce171c92092f2f4a63"

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
