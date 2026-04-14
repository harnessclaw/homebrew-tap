cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.3"
  sha256 arm:   "1f8cb38719d257e26c3f8c57c038db874a628275e4eadab32fa04c794e23d51f",
         intel: "08e47e78e24f8e52f3e61669f31a962c1faed6cee01c729cdacc59938846667a"

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
