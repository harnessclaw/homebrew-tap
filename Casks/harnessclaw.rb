cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.18"
  sha256 arm:   "4becbb8a64e89db85cc006a852b1f9fd7f8ffc253ed172abaa097c7e783cf0d2",
         intel: "220da0a3ed7007703a62452c91aac4a0a14b6a689cf53807ce2f49d09d01259a"

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
