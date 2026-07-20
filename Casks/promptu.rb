cask "promptu" do
  version "0.5.0"
  sha256 "e9f27edbc35170b057f36ab415f939a40a798c91bffba5cde5438c3e50251215"

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
