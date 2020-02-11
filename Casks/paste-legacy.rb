cask 'paste-legacy' do
  version '2.5.7'
  sha256 'bfc570b561a1ccbdc2372ba86c55ee3258792f8f5ee493082f7e1bc422db7030'

  url "https://pasteapp.io/api/legacy-download"
  name 'Paste'
  homepage 'https://pasteapp.io/'

  depends_on macos: '>= :high_sierra'

  app 'Paste.app'

  uninstall launchctl: 'com.wiheads.paste.loginitem',
            quit:      'com.wiheads.paste'

  zap trash: [
               '~/Library/Application Scripts/com.wiheads.paste',
               '~/Library/Application Scripts/com.wiheads.paste.loginitem',
               '~/Library/Application Support/com.wiheads.paste*',
               '~/Library/Application Support/Paste',
               '~/Library/Application Support/Paste Helper',
               '~/Library/Caches/com.wiheads.paste',
               '~/Library/Containers/com.wiheads.paste',
               '~/Library/Containers/com.wiheads.paste.loginitem',
               '~/Library/Group Containers/*.com.wiheads.paste*',
               '~/Library/Logs/Paste',
               '~/Library/Preferences/com.wiheads.paste.plist',
               '~/Library/Preferences/com.wiheads.paste-helper.plist',
             ]
end
