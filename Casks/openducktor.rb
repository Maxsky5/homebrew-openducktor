cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "325e67b2eea0d60d08a29f5738564fbe52204e8b4f2067b006c6556e25a4e49f",
         intel: "8d6acf193124949e94f7dba1ede74281df0275fd4065ace8814e3880e91b920b"

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
