cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "b0eb944499a36e5e1e8a40fd01abb511f0f0097205ab4509c10ee66171838f6d",
         intel: "e323fa0c8caff13e997211c4a6b8a7b8474e086e8508c6281c4db2f908dc9723"

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
