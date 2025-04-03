cask "sfm@beta" do
  version "1.12.0-beta.1"
  sha256 "b87c933758507c0daf8d313043fe8bdbd4a03beccc8cb752432e4d8c7a6fd343"

  url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/SFM-#{version}-universal.dmg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM-beta"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  depends_on macos: ">= :ventura"

  app "SFM.app"

  uninstall quit:       "io.nekohasekai.sfa.independent",
            login_item: "SFM"

  zap trash: [
    "~/Library/Group Containers/group.io.nekohasekai.sfavt",
    "~/Library/Containers/io.nekohasekai.sfavt.standalone",
    "~/Library/Application Scripts/io.nekohasekai.sfavt.standalone",
    "~/Library/Application Scripts/group.io.nekohasekai.sfavt",
  ]
end
