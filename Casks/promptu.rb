cask "promptu" do
  version "0.1.0"
  sha256 "50e9b3c255eff55c6454f5aadb24c5e5e32b353533be0364bd0d8a0b4d3a4e1a"

  url "https://github.com/mrcnski/promptu-app/releases/download/v#{version}/Promptu-#{version}.zip"
  name "Promptu"
  desc "Menubar companion to Emacs promptu: compose LLM prompts from blocks"
  homepage "https://github.com/mrcnski/promptu-app"

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
