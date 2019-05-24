cask 'dylib-hijack-scanner' do
  version '1.4.1'
  sha256 '6d0ce00e0e111059e157bae26d4a913d7cb7c42cee6493b638c2c5019fe987fc'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/DHS_#{version}.zip"
  name 'Dylib Hijack Scanner'
  homepage 'https://objective-see.com/products/dhs.html'

  app 'DHS.app'
end