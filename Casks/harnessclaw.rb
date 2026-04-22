cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.9"
  sha256 arm:   "39ef6a11a82e15db240cf9244117d004e1eb220c975625364e9bc0c141a9d6b4",
         intel: "24f849af56953064dd40be67290b6c3270ba92c0c0ab8ad399e440d4e0871464"

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
