cask 'betterzipql' do
  version '5.3.4'
  sha256 'ba4b3e468d93299ffc71f86543071cc34ab7b5943c20789c43bc8c50b1472c9b'

  url 'https://macitbetter.com/BetterZip.zip'
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss"
  name 'BetterZipQL'
  homepage 'https://macitbetter.com/BetterZip-Quick-Look-Generator/'

  qlplugin 'BetterZip.app/Contents/Library/QuickLook/BetterZipQL.qlgenerator'

  postflight do
    sleep 5
    puts 'Removing artifacts...'
    system_command '/bin/rm',
                   args: [
                           '-R',
                           "#{staged_path}/BetterZip.app",
                         ]
  end

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macitbetter.betterzip.sfl*',
               '~/Library/Application Support/com.macitbetter.betterzip',
               '~/Library/Caches/com.apple.helpd/Generated/com.macitbetter.betterzip.help*',
               '~/Library/Caches/com.macitbetter.betterzip',
               '~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip',
               '~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip-setapp',
               '~/Library/Preferences/com.macitbetter.betterzip.plist',
               '~/Library/Saved Application State/com.macitbetter.betterzip.savedState',
             ]
end
