cask "cursor" do
  version "1.0.5431"
  sha256 "795fa8e59917455d11e416c533694485677043bb6e2b4e0c4df3d4e50b13973b"

  url "https://lf-trae.toscdn.com/obj/trae-ai-cn/pkg/app/releases/stable/#{version}/darwin/Trae-darwin-arm64.dmg"
  name "Trae"
  desc "Trae is an adaptive AI IDE that transforms how you work, collaborating with you to run faster."
  homepage "https://www.trae.ai/"

  app "Trae.app"
end
