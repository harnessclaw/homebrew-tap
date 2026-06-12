cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.22"
  sha256 arm:   "0df3e0d84c3696363f3caabffdacb8c654268c1e7079113c0fd781cec9180b08",
         intel: "766ebe1d3549960241a4905da193a0a65453ef5fea9288f2b11c6c56090aa50d"

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
