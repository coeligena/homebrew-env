cask 'bettertouchtool' do
  if MacOS.version <= :mavericks
    version '2.05'
    sha256 '41013cfeffee286a038363651db3dd315ff3a1e0cf07774d9ce852111be50a5a'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}_final_10_9.zip"
  elsif MacOS.version <= :mavericks
    version '2.428'
    sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}.zip"
  else
    version '2.428'
    sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt_#{version}_recovery_mojave.zip"
    appcast 'https://bettertouchtool.net/releases/'
  end

  name 'BetterTouchTool'
  homepage 'https://folivora.ai/'

  auto_updates true

  app 'BetterTouchTool.app'

  uninstall login_item: 'BetterTouchTool'

  zap trash: [
               '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
               '~/Library/Application Support/BetterTouchTool',
             ]
end
