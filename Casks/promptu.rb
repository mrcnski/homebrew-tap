cask "promptu" do
  version "0.3.0"
  sha256 "4308ac9589e1a428bf618f6074e86eeb38d7a3b15a58880787d0c38fd8edcf70"

  url "https://github.com/mrcnski/promptu/releases/download/v#{version}/Promptu-#{version}.zip"
  name "Promptu"
  desc "Menubar companion to Emacs promptu: compose LLM prompts from blocks"
  homepage "https://github.com/mrcnski/promptu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Promptu.app"

  zap trash: "~/Library/Preferences/ski.mrcn.promptu-app.plist"

  caveats <<~EOS
    Promptu is ad-hoc signed, not notarized. After installing, clear
    the quarantine flag once:
      xattr -d com.apple.quarantine /Applications/Promptu.app
  EOS
end
