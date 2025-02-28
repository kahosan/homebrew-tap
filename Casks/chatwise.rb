cask "chatwise" do
  version "0.7.7"
  sha256 "06062e6a02314d120e8b4dd84aca94ceeaa460f947f0c617226d730442562e90"

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