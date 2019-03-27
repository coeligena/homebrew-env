cask 'witch3' do
  version '3.9.9'
  sha256 'e06e524d054fce30aa55f3031c99659e54b9b6d8d86fca20b682b2d6cf97cc8c'

  url "https://manytricks.com/download/_do_not_hotlink_/witch#{version.no_dots}.dmg"
  appcast 'https://manytricks.com/witch/appcast.xml'
  name 'Witch'
  homepage 'https://manytricks.com/witch/'

  auto_updates true

  prefpane 'Witch.prefPane'

  zap trash: '~/Library/Preferences/com.manytricks.Witch.plist'
end
