cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.12"
  sha256 arm:   "fb1cf2f27feb2637ae788e34b046fd063d3511002cc8932ddb4a864f5297bf6f",
         intel: "fa095287b387dc17db07ea51a34a22a9538001b45341cf71c3d7710a433e15fb"

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
