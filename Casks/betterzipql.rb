cask 'betterzipql' do
  version '4.2.5'
  sha256 '6fda66723dfacba7d7ffbf1817e06031aa7faeec586cd11b9619db28940fa179'

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
