cask 'moneywell' do
  version '3.0.9'
  sha256 '4137e9ed9b1b7fb414c0e66c01ffde0bcd00d28152021ddefd5097ae01c48983'

  url "https://moneywell.app/downloads/sparkle/MoneyWell-#{version}.zip"
  name 'MoneyWell'
  homepage 'https://moneywell.app/'

  app 'MoneyWell.app'
end
