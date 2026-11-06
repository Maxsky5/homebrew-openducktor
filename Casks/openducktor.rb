cask "openducktor" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "1551bc014609f0cccc348597a96ebbd83e3b75c981d2cdf496b6994306fa0fd8",
         intel: "f35d38abb39b70c203df8948dea71163b563cf8742bed90de75270715f6431b5"

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
