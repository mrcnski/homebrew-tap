cask "promptu" do
  version "0.2.0"
  sha256 "647c7a0fdf25c70eade667882fe30fa3c120e5be6bcbe03a731ad98bd70f612c"

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
