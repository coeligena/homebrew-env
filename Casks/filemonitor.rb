cask 'filemonitor' do
  version '1.1.1'
  sha256 'ee4545c49da1af0e7f70572195b88ec7b750560aec0266f3f8d40333d80f5cd6'

  url "https://bitbucket.org/objective-see/deploy/downloads/FileMonitor_#{version}.zip"
  name 'FileMonitor'
  homepage 'https://objective-see.com/products/utilities.html#FileMonitor'

  app 'FileMonitor.app'
end
