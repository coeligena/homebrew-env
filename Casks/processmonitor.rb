cask 'processmonitor' do
  version '1.2.1'
  sha256 '0a99c279906f9df170a4c0b4c6ffbbc8ff93a4a5990bde5872470a92b0925091'

  url "https://bitbucket.org/objective-see/deploy/downloads/ProcessMonitor_#{version}.zip"
  name 'ProcessMonitor'
  homepage 'https://objective-see.com/products/utilities.html#ProcessMonitor'

  app 'ProcessMonitor.app'
end
