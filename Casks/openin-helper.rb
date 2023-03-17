cask "openin-helper" do
  version "4.0.4"
  sha256 "42210d90d23feaba911fd9c74b382a5e17eac1bba5192dd9383ad3c29ce83155"

  url "https://loshadki.app/openin-helper4/OpenIn%20Helper%20#{version}.dmg"
  name "OpenIn Helper 4"
  desc "OpenIn Helper is a tiny utility that brings OpenIn to the next level, and helps OpenIn to deliver to users more advanced features"
  homepage "https://loshadki.app/openin-helper4/"

  app "OpenIn Helper.app"

  uninstall   quit:   [
                "app.loshadki.OpenIn",
                "app.loshadki.OpenIn.Helper"
              ]
end
