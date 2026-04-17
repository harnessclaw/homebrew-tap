cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "ec0a4dbff1ae24e791b414b1a472d12b8e76145187088c2ee9d1ea8b42d9d609",
         intel: "67f26af91bab4f5919c7546a3fb01dc3d8e49cacd7847ba7cd3761debf571ec1"

  url "https://github.com/harnessclaw/harnessclaw/releases/download/v#{version}/HarnessClaw-#{version}-mac-#{arch}.zip",
      verified: "github.com/harnessclaw/harnessclaw/"
  name "HarnessClaw"
  desc "Desktop agent control console"
  homepage "https://github.com/harnessclaw/harnessclaw"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  app "HarnessClaw.app"
end
