cask 'betterzipql' do
  version '4.2.3'
  sha256 '643ea6cbec156ace28ccb6af4a6ef583b34ca16fa714b2e53b29828b3705e4ba'

  url 'https://macitbetter.com/BetterZip.zip'
  name 'BetterZipQL'
  homepage 'https://macitbetter.com/BetterZip-Quick-Look-Generator/'

  qlplugin 'BetterZip.app/Contents/Library/QuickLook/BetterZipQL.qlgenerator'
end
