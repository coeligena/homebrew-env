cask 'webcatalog' do
  version '17.4.0'
  sha256 '32508bb2f76ee99da2068719e8b2fc3e6325126cb35e835084152b4ad854bd39'

  url "https://github.com/quanglam2807/webcatalog/releases/download/v17.4.0/WebCatalog-#{version}.dmg"
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/download/mac'
#  homepage 'https://github.com/quanglam2807/webcatalog'

  app 'WebCatalog.app'
end
