cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.8"
  sha256 arm:   "f27e35817e5bf82e0f699e9845ce01d15596b23af92581d8fc452d6695b660b8",
         intel: "cc2f11bcb945a79e319414d5acc60d7e71770dfe38a476fdaa4023600e9edab1"

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
