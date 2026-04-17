cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.5"
  sha256 arm:   "0a6875e2eb48a342acc13dc26dbd443290cac0fd5726a3c3cf0686d30bd9dba8",
         intel: "70852e679de0f2785fd3606d8f9a649dfb3b1117b74022df31db81e36f84bd55"

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
