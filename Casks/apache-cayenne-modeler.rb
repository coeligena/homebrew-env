cask 'apache-cayenne-modeler' do
  version '4.0.RC1'
  sha256 'b5899a4275de89c5adebde0b25b2834c02917bfe7968f64eaef5c3b3a3e61ecc'

  url "https://www-eu.apache.org/dist/cayenne/#{version}/cayenne-#{version}-macosx.dmg"
  name 'Apache Cayenne Modeler'
  homepage 'https://cayenne.apache.org/download.html'

  suite "cayenne-#{version}-macosx", :target => 'CayenneModeler'
  app 'CayenneModeler.app', :target => "#{appdir}/CayenneModeler/CayenneModeler.app"
end
