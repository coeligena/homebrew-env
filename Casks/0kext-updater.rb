cask '0kext-updater' do
  version '3.5.3'
  sha256 '024a0b2afe856b6de7bd5c6bc3dc3091771e22889c925d99cc440d529fb00797'

  url 'https://bitbucket.org/profdrluigi/kextupdater/downloads/Kext_Updater_3.5.3.zip'
  appcast 'https://update.kextupdater.de/kextupdater/appcastng.xml'
  name 'Kext Updater'
  homepage 'https://kextupdater.de/'

  app 'Kext Updater.app'

  zap trash: [
               '~/Library/Caches/kextupdater.slsoft.de',
               '~/Library/Preferences/kextupdater.slsoft.de.plist',
               '~/Library/Preferences/kextupdaterhelper.slsoft.de.plist',
               '~/Library/Saved Application State/kextupdater.slsoft.de.savedState',
             ]
end
