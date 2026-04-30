cask "openducktor" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "bbbae2fde3e395c3f78eb400311fa07f57564f5fcd63084162d32c54e4924e77",
         intel: "2fb5ad93a3d570ae8cb0c169f8eb41ebcd49fe55444348f8068d61e244a99db0"

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
