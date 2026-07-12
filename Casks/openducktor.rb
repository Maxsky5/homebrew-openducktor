cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "e3c6f6b6a1b254e6d376844c0d9640155d561baaf1188ae6ec99a2e791cbcab9",
         intel: "2d807fb54d63a917b0c88f42c8582008488eb5b167cc3b3016a3e4a9aa14b209"

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
