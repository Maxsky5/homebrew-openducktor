cask "openducktor" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "5c056f5b9165fa4e6bc92f499db2778b8ebc3b18074aeb184912278d5e891b7b",
         intel: "1900601d3fbeda98a76f825fbc56566f75f5a3f0df46da1d6663e96519bc5278"

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
