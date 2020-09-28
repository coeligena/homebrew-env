cask 'freetube' do
  version '0.7.2'
  sha256 'ecbef4dec454a227ee98a00f7ca482e69849012ef566e8b7a792beaf90aaa06b'

  url "https://github.com/FreeTubeApp/FreeTube/releases/download/v0.7.2-beta/FreeTube-#{version}-mac.dmg"
  name 'FreeTube'
  homepage 'https://freetubeapp.io/'

  app 'FreeTube.app'
end
