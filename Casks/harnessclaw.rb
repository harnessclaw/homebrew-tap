cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.4"
  sha256 arm:   "2d1d3388aacc99fac2971811775e6da4e803cb1003cf2e69937eddf34ed1ac92",
         intel: "3421c712c63fe3d8f0def805c760a079a0a11ec0c464e1ee1745225e5f15e68a"

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
