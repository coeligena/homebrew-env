cask 'unlox' do
  version :latest
  sha256 'ac7ef5899a3ec8418bfd4c459efea8b98cb9a540d66a6ae0187ae1170fc1a761'

  url "https://unlox.it/download/"
  name 'Unlox'
  homepage 'https://unlox.it/'

  depends_on macos: '>= :high_sierra'

  app 'Unlox.app'

  zap trash: '~/Library/Preferences/com.kanecheshire.Unlox.plist'
end
