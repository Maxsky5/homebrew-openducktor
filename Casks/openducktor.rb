cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "45665803a6c2b95f98bde072d481ede12fb7285968ebb963c192ef5116efa0b8",
         intel: "802c2d35e320ba071c8797355ea86b6f624ea676e4d074eef304b0d3c36580fb"

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
