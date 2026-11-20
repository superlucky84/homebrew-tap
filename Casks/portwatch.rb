cask "portwatch" do
  version "0.1.1"
  sha256 "8b8efa3388393f356920422dfd8b9740d61745ecd1967a15891baef12d8a1e3b"

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
