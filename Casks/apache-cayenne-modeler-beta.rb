cask 'apache-cayenne-modeler-dev' do
  version '4.1.B1'
  sha256 '13382c4ce1d1ac74cef24954f07e16270efa88eadb6b44a3e1af49beaa360551'

  url "https://www.apache.org/dist/cayenne/#{version}/cayenne-#{version}-macosx.dmg"
  name 'Apache Cayenne Modeler (Development)'
  homepage 'https://cayenne.apache.org/download.html'

  suite "cayenne-#{version}-macosx", :target => 'CayenneModelerDev'
  app 'CayenneModeler.app', :target => "#{appdir}/CayenneModelerDev/CayenneModeler.app"
end
