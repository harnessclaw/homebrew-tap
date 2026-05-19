cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.16"
  sha256 arm:   "c6dc367219b6dee99429a8fde45d4c621cc08a683464d946c5e97e5ee6689cac",
         intel: "a1301b6f9347a377fa835758c6031ca9e23f2d027f5338eeac401ac1449928d4"

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
