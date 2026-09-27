cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "9e875be60f19cd43196dafe491b440f844b2f3c883534ff48d3de853bc491f2d",
         intel: "cae286681b3cfd8d9a76860f0bd6c805f9c1ca11c2f5a28dc21a9e428aa601c3"

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
