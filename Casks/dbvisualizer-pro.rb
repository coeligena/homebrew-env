cask 'dbvisualizer-pro' do
  version '10.0.25'
  sha256 'd0caee255af5c31520af220419bae35034319a0660089e0215403ca7fda92f06'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}.tgz"
  name 'DbVisualizer Pro'
  homepage 'https://www.dbvis.com/'

  app 'DbVisualizer.app'
end
