cask 'spitfire' do
  version '3.2.10'
  sha256 '63db690709b92d69416affd521298942335eff88c5354732d4ebb86317039ec6'

  url 'https://www.spitfireaudio.com/library-manager/download/mac/'
  # appcast "https://native-instruments.com/forum/threads/official-update-status-native-access-current-version-#{version.major_minor_patch.dots_to_hyphens}.313999", must_contain: version.major_minor_patch
  name 'Spitfire Audio'
  homepage 'https://www.spitfireaudio.com/info/library-manager/'

  auto_updates true

  app 'Spitfire Audio.app'

  uninstall quit:      'com.spitfireaudio.spitfireaudio',
            launchctl: 'com.spitfireaudio.LibraryManagerHelper',
            delete:    [
                         '/Library/PrivilegedHelperTools/com.spitfireaudio.LibraryManagerHelper'
                       ],
            rmdir:     [
                       ]

  # zap trash: [
  #              '/Library/Application Support/Native Instruments/Service Center/NativeAccess.xml',
  #              '~/Library/Application Support/Native Instruments/Native Access*',
  #              '~/Library/Application Support/Native Instruments/Service Center',
  #              '~/Library/Preferences/com.spitfireaudio.spitfireaudio.plist',
  #              '~/Music/Spitfire Audio/',
  #              '~/Spitfire',
  #              '/Users/Shared/Spitfire',
  #            ],
  #     rmdir: [
  #              '/Library/Application Support/Native Instruments/*',
  #              '/Library/Application Support/Native Instruments',
  #              '~/Library/Application Support/Native Instruments',
  #            ]
end
