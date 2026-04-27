cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.10"
  sha256 arm:   "3e34765a85b16e060d18ab74a64d6c295b61b0b2bc0fb0d78ed08bec92e85571",
         intel: "55c19e400b765acb9c8729ef2c49951a662870676c1c00252035a39e7b6dbef7"

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
