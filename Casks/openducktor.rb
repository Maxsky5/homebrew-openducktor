cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "e062a25e90d3f653a66394acc8b511c8ad4e7acbb2697df76a4da9f7c0a5261b",
         intel: "1b553158df6d7e963220edb29e7581c069e27e8bbd9a1a77b14d781d3806e9ac"

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
