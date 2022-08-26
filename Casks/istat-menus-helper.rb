cask 'istat-menus-helper' do
  version '2.0'
  sha256 '4d29c82a55c1a49e7523c53f7d6cb483cff1a03346f88af0e0025c53604f18ff'

<<<<<<< Updated upstream
  url 'https://cdn.bjango.com/files/istatmenushelper/istatmenushelper2.0.zip'
=======
  url 'https://download.bjango.com/istatmenushelper/2/'
>>>>>>> Stashed changes
  name 'iStat Menus Helper'
  homepage 'https://bjango.com/mas/istatmenus/helper/#v2/'

  installer manual: 'iStat Menus Helper Installer.app'

  postflight do
    sleep 5
    puts 'Press Enter after installing to continue to remove artifacts...'
    ignored = STDIN.gets
    puts 'Removing artifacts...'
    system_command '/bin/rm',
                   args: [
                           '-R',
                           "#{staged_path}/iStat Menus Helper Installer.app",
                         ]
  end
  
  uninstall quit:      [
                         'com.bjango.istatmenus.agent.mas',
                         'com.bjango.istatmenus.status.mas',
                       ],
            launchctl: [
                         'com.bjango.istatmenus.helper.mas',
                       ]

  zap rmdir: '/Library/Application Support/iStat Menus Helper'
end
