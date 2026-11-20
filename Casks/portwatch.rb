cask "portwatch" do
  version "0.1.0"
  sha256 "c0579d1fd1e657b4cf4403320f6401f30ce1777c3d71b6bef4e463ee8d3203c0"

  url "https://github.com/superlucky84/homebrew-tap/releases/download/portwatch-v#{version}/portwatch-#{version}-arm64.zip"
  name "portwatch"
  desc "Menu bar app that lists local dev servers and stops them through their manager"
  homepage "https://github.com/superlucky84/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "portwatch.app"

  uninstall quit: "io.github.superlucky84.portwatch"

  zap trash: "~/Library/Application Support/io.github.superlucky84.portwatch"

  caveats <<~EOS
    portwatch is not notarized by Apple, so macOS blocks the first launch.
    Open System Settings > Privacy & Security and click "Open Anyway".
    You may need to do this again after an upgrade.
  EOS
end
