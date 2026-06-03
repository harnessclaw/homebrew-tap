cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.18"
  sha256 arm:   "9b4f3f22e3074d5d717e8843c2718c48e04628189140ffea1863951981a4e874",
         intel: "995c65131ce28060888792f260033d5619757ea81a485586ad17bd361549edd1"

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
