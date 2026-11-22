cask "vaultkeeper" do
  version "0.1.15"
  sha256 "b47f065f2c0a5237c7cc6279ab8cc1fc6f7fd650cdf97c4731df8318050017c3"

  url "https://github.com/avbel/vaultkeeper/releases/download/v#{version}/Vaultkeeper-v#{version}-arm64.app.zip"
  name "Vaultkeeper"
  desc "Bitwarden-compatible password manager for the desktop"
  homepage "https://github.com/avbel/vaultkeeper"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Vaultkeeper.app"

  uninstall launchctl: "vaultkeeper",
            quit:      "org.vaultkeeper.desktop"

  zap trash: [
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/org.vaultkeeper.browser.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/org.vaultkeeper.browser.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/org.vaultkeeper.browser.json",
    "~/Library/Application Support/vaultkeeper",
    "~/Library/LaunchAgents/vaultkeeper.plist",
    "~/Library/Logs/vaultkeeper",
  ]

  caveats <<~EOS
    Vaultkeeper is signed with its own certificate, not notarized by Apple, so macOS blocks the
    first start ("Apple could not verify…"). Open it once, then choose Open Anyway in
    System Settings → Privacy & Security, or run:
      xattr -dr com.apple.quarantine /Applications/Vaultkeeper.app
    Later versions install from the menu bar or automatically; `brew upgrade` skips it
    unless you pass --greedy.
    Log out of each account in the app before `brew uninstall --zap`: refresh tokens stay in the
    login keychain under items prefixed "vaultkeeper".
  EOS
end
