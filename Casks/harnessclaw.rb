cask "harnessclaw" do
  arch arm: "arm64", intel: "x64"

  version "0.0.5"
  sha256 arm:   "013cde38249f2e3db8d887d725cdec6f4013b3024a6302d7b3915264b8b02cde",
         intel: "145fff672dd5df2639d882748a393798037f4cb837d9a31b69ec779b9437e7f4"

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
