cask "promptu" do
  version "0.4.0"
  sha256 "3a2e9f53ea264132a2352778b5242bc7a744fe1706e3c179a5528f26983b3fba"

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
