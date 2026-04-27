cask "openducktor" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "82c850b482d9e348f935275a47f70abc0f6c47e26cd2de847e319cd0c9587f35",
         intel: "0a6e5df33f7d65ce6646164537dadb3ebc5d966790ee9959f8c78e20a5c8a1ac"

  url "https://github.com/Maxsky5/openducktor/releases/download/v#{version}/OpenDucktor_#{version}_#{arch}.dmg"
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
    "~/Library/Preferences/dev.openducktor.desktop.plist",
    "~/Library/Saved Application State/dev.openducktor.desktop.savedState",
  ]
end
