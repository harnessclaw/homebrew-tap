cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.15"
  sha256 arm:   "dced8ebcfb1db6bd1759c7e5f31a14e3c4b0dad8a4bcd76decb3fda529b35043",
         intel: "3c111e534eda9a6e4e64493a287c54fd64d988d37d07c9807c8854420c4c1afa"

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
