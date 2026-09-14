cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "234f241d0c77fada23001ca0fcd596986f5bbfad05f661a44d52f48e1ab27a39",
         intel: "656702fe7c69c68f7ae342c640180474815cac60edbcfbb249e90d44bcc237ff"

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
