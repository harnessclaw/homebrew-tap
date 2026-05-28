cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.17"
  sha256 arm:   "9d9c4ee40a49f2a315f2fb3fca3053f89f8b7f1bc7ec03bb7f00b3c8590fe684",
         intel: "6f93101ea19f0a8efc58bd3b50804d4da29d517154216152d454fa4d851902e2"

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
