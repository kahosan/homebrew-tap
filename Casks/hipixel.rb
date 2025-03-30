cask "hipixel" do
  version "0.3.0"
  sha256 "a405f91bbd69a5a398647530a01eec1dd6ceeb9ea0d889bf36044da674d23f2a"

  url "https://github.com/okooo5km/HiPixel/releases/download/v#{version}/HiPixel-v0.3.dmg"
  name "hipixel"
  desc "HiPixel is a native macOS application for AI-powered image super-resolution, built with SwiftUI and leveraging Upscayl's powerful AI models."
  homepage "https://github.com/okooo5km/HiPixel"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "HiPixel.app"

  zap trash: [
    "~/Library/Application Support/hipixel",
    "~/Library/Preferences/tech.5km.HiPixel.plist",
    "~/Library/Saved Application State/tech.5km.HiPixel.savedState",
  ]
end
