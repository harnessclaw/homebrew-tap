cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "468312d0a33a5c3e3f51d3f3f2dd833743d595a943ebd00eb475e0cc93145cd8",
         intel: "49b3561105a9b0932d835b5dc807a0feff0631eec650bc3c40d64e15b3e38de5"

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
