cask 'dbvisualizer-pro' do
  version '10.0.18'
  sha256 '8c468655e19d3efa437c17416cd670b53174033bb3fe16c8294644f79dd245e4'

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos_#{version.gsub('.', '_')}.tgz"
  name 'DbVisualizer Pro'
  homepage 'https://www.dbvis.com/'

  app 'DbVisualizer.app'
end
