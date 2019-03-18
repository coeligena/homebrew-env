cask 'apache-cayenne-modeler' do
  version '4.0.1'
  sha256 '0c952873ee328febaa8229ad2682b915b361751642ae96bb908f1f8e759525df'

  url "https://www.apache.org/dist/cayenne/#{version}/cayenne-#{version}-macosx.dmg"
  name 'Apache Cayenne Modeler'
  homepage 'https://cayenne.apache.org/download.html'

  suite "cayenne-#{version}-macosx", :target => 'CayenneModeler'
  app 'CayenneModeler.app', :target => "#{appdir}/CayenneModeler/CayenneModeler.app"
end
