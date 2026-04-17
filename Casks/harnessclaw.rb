cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "6760ed3d1632b7262bdb8b23a54e06924b0cdcbf1423ea8312294ce0f7344b64",
         intel: "3dedd54cdea5633f1137c4e34e3eb2fdcd388386ddee883c654c370b3dc5c3b0"

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
