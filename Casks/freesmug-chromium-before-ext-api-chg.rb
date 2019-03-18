cask 'freesmug-chromium-before-ext-api-chg' do
  version '44.0.2403.157'
  sha256 '71215ab335d132c1ad3c6b3fcb5ebc75d4b3384b7c988f7980377cc35280c6f2'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
