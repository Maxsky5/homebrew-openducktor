cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "50435c54cbdb78fcc7ab3d13af8587b1a6ad7a9e2243f25d10159a7d3f408ebc",
         intel: "5198ec4464d166a21db54bfb8004f3335a12916093b2500e1b016aa7787977ec"

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
