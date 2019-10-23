cask 'betterzipql' do
  version '4.2.5'
  sha256 '6fda66723dfacba7d7ffbf1817e06031aa7faeec586cd11b9619db28940fa179'

  url 'https://macitbetter.com/BetterZip.zip'
  name 'BetterZipQL'
  homepage 'https://macitbetter.com/BetterZip-Quick-Look-Generator/'

  qlplugin 'BetterZip.app/Contents/Library/QuickLook/BetterZipQL.qlgenerator'
end
