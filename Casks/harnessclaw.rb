cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.20"
  sha256 arm:   "05c3d4933d1457e068c52446886d7268b51c6bebf4e9cd328018b32ad63a58bc",
         intel: "4ad9fd6e52f2eec9a139abadaaa92b3af4bed8ed35d5b71fa90b89f27ba021e8"

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
