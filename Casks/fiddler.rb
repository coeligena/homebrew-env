cask 'fiddler' do
  version '0.2.2'
  sha256 'cfaa4c0aaf4ea397602e8a67f2a6fb1a9b9de18f0e6ee23d7cdba0a9a3dfdb0a'

  url 'https://telerik-fiddler.s3.amazonaws.com/fiddler-latest/Progress%20Telerik%20Fiddler.dmg'
  name 'Fiddler Everywhere'
  homepage 'https://www.telerik.com/fiddler-everywhere'

  app "Progress Telerik Fiddler.app"
end
