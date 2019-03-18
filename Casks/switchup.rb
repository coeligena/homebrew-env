cask 'switchup' do
  version :latest
  sha256 :no_check

  url "https://www.irradiatedsoftware.com/download/SwitchUp.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/switchup.php'
  name 'SwitchUp'
  homepage 'https://www.irradiatedsoftware.com/switchup/'

  app 'SwitchUp.app'

  zap trash: [
               '~/Library/Preferences/com.irradiatedsoftware.SwitchUp.plist',
             ]
end
