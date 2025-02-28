cask "chatwise" do
  version "0.7.8"
  sha256 "12ab83d8e46dda84f2bc3c67ffdb2d8cd59f9d2427b4820413342aad92974d02"

  url "https://github.com/egoist/chatwise-releases/releases/download/v#{version}/ChatWise_#{version}_aarch64.dmg",
      verified: "github.com/egoist/chatwise-releases/"
  name "ChatWise"
  desc "The fastest AI Chatbot for any LLM"
  homepage "https://chatwise.app/"

  auto_updates true

  app "ChatWise.app"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end