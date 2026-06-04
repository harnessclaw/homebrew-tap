cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.19"
  sha256 arm:   "e6a87f7c7202db9fcd15342b76a57a4ee4a1ed322cf60711608aca6c9a45fd44",
         intel: "dbbf5ebe109de07a55d67a5bb785d5b40ec8ceb1b8172356c1a7573ecb58be8e"

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
