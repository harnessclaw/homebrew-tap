cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.10"
  sha256 arm:   "b4113f0c8de9469dbdf647b7687e9abc597e46d1a6fe09bf06b6222dfa191032",
         intel: "f719021a6f25da5fc96206487b5753cd1b0dc4bae8948bb05eaec2d7c06d2d34"

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
