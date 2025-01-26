cask "chatwise" do
  version "0.6.20"
  sha256 "16c9929ec69a0b3ff346d14eeaf73688bf24f806cd8e278b2de3ed6801269f8c"

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