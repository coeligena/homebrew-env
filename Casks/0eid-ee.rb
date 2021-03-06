cask '0eid-ee' do
  version '20.05.0.1877'
  sha256 'c85e37265a23ba1f5f6e288205fe28556a119515876c5f1b949c23bd5047c877'

  url "https://installer.id.ee/media/osx/Open-EID_#{version}.dmg"
  name 'Electronic identity card software for Estonia'
  name 'eID Estonia'
  homepage 'https://installer.id.ee/?lang=eng'

  pkg 'Open-EID.pkg'

  postflight do
    sleep 5
    puts 'Removing browser plug-ins...'
    system_command 'profiles',
                   args: ['remove', '--identifier', 'ee.ria.chrome-token-signing', '--'],
                   sudo: true
    system_command '/bin/rm',
                   args: [
                           '-rf', '--',
                           '/Library/Internet\ Plug-Ins/esteidsafariplugin.webplugin',
                           '/Library/Internet\ Plug-Ins/esteidfirefoxplugin.*',
                           # '/Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{aa84ce40-4253-a00a-8cd6-0800200f9a6*',
                           # '/Library/Application\ Support/Mozilla/NativeMessagingHosts/ee.ria.esteid.json',
                           # '/Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{443830f0-1fff-4f9a-aa1e-444bafbc7319\}.xpi',
                           # '/Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{02274e0c-d135-45f0-8a9c-32b35110e10d\}.xpi',
                           # '/Library/Application\ Support/Mozilla/PKCS11Modules/onepinopenscpkcs11.json',
                           '/Library/Google/Chrome/NativeMessagingHosts/chrome-token-signing.app',
                           '/Library/Google/Chrome/NativeMessagingHosts/ee.ria.esteid.json',
                           '/Library/Application\ Support/Google/Chrome/External\ Extensions/ckjefchnfjhjfedoccjbhjpbncimppeg.json'
                         ],
                   sudo: true
  end

  uninstall script: {
                      executable: 'uninstall.sh',
                      input:      ['y'],
                      sudo:       true,
                    },
            quit:   'ee.ria.TokenSigningApp'

  caveats <<~EOS
    DigiDoc4 Client and ID-card Utility are available in the App Store:
      https://appstore.com/mac/ria
  EOS
end
