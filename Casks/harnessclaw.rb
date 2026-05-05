cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.11"
  sha256 arm:   "6b7337ece203b3ccac9da9e6275a05125489fa9220360e660c3da2e49e2d75de",
         intel: "3a549498735bdbdb0e7b084d76ef63e1f8db5aea524bc9bbb29c9b615242826b"

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
