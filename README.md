# homebrew-tap

Personal [Homebrew](https://brew.sh) tap.

```sh
brew install --cask mrcnski/tap/promptu
```

| Cask | Description |
|------|-------------|
| [promptu](https://github.com/mrcnski/promptu) | Menubar companion to Emacs promptu: compose LLM prompts from blocks |

The casks are ad-hoc signed, not notarized; after installing, clear the
quarantine flag once (each cask's caveats show the exact command):

```sh
xattr -d com.apple.quarantine /Applications/<App>.app
```
