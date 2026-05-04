cask "openducktor" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "db270ccaf15afb60b5c5b54fbd897e57cf398147468c4140e4e248605cb78cb3",
         intel: "aa10df11c515580ee75ac58489e69b4bfdc3cdee4dae906ae8df90d479e90905"

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
