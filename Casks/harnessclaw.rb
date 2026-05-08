cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.13"
  sha256 arm:   "464d57c28c83f3749d3bff2c023541ff4fb3a6667915ba399167917b83b8f875",
         intel: "7108030ff603f63a3cc13467866ef63d601bc9b218108d89ea70973ae1bb7901"

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
