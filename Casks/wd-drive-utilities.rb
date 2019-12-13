cask 'wd-drive-utilities' do
  version '2.1.1.110'
  sha256 '1abbdf3f89c9bbb0b28e72ffa92f03c3355b4dad783cf68d16a8928abd41cb13'

  url 'https://downloads.wdc.com/wdapp/WD_Utilities_Standalone_Installer_Mac_2_1_1_100.zip'
  name 'WD Drive Utilities for Mac'
  homepage 'https://support.wdc.com/downloads.aspx?p=157'

  installer manual: 'WD Drive Utilities Installer.app'

  postflight do
    sleep 5
    puts 'Press Enter after installing to continue to remove artifacts...'
    ignored = STDIN.gets
    puts 'Removing artifacts...'
    system_command '/bin/rm',
                   args: [
                           '-R',
                           "#{staged_path}/WD Drive Utilities Installer.app",
                         ]
  end

  uninstall script: {
                      executable: '/Applications/WD Drive Utilities Uninstaller.app/Contents/MacOS/WD Drive Utilities Installer',
                      sudo:       true,
                    }
end
