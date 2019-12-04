cask 'istat-menus-helper' do
  version '1.1'
  sha256 'b871240085f99a81801055755aec1d230ab828b6a1518b1acee5bef46666db05'

  url "https://files.bjango.com/istatmenushelper/istatmenushelper.zip"
  name 'iStat Menus Helper'
  homepage 'https://bjango.com/help/istatmenus6/helper/'

  installer manual: "iStat Menus Helper Installer.app"

  uninstall quit: [
                    'com.bjango.istatmenus.agent.mas',
                    'com.bjango.istatmenus.status.mas'
                  ],
            launchctl: [
                         'com.bjango.istatmenus.helper.mas'
                       ]

  zap rmdir: '/Library/Application Support/iStat Menus Helper'
end
