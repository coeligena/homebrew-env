cask 'finderminder' do
  version :latest
  sha256 :no_check

  url 'http://www.irradiatedsoftware.com/downloads/FinderMinder.zip'
  name 'FinderMinder'
  homepage 'http://irradiatedsoftware.com/labs'

  app 'FinderMinder.app'

  zap :delete => '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
