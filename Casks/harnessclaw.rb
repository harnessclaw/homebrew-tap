cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.23"
  sha256 arm:   "5694f7f4bc9cd121fd149935ea1678a9350e4335168a7ccf5d14d150a6821506",
         intel: "6478c2c277d52d293e58a0d70f5cf3cd6572dabf336cab17dad7da15728088c2"

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
