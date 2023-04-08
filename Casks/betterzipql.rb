cask 'betterzipql' do
  version '5.3.2'
  sha256 '12e0c6b62d3fa149b740bb03bcca8efa6724194c7ee86fb9ee3824c0f79cda64'

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
