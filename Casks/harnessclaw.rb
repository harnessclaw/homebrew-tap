cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.14"
  sha256 arm:   "8d426fc5e3bb8e88ca8014a85c9b287592385f423d0ecb1b72f7e8dcba9e0449",
         intel: "82a09c18fbbd22528a89d5e5c09d610080923ba31d58563ca342dd875f8a9709"

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
