cask 'moneywell2' do
  version '2.3.17'
  sha256 'd657da0a684d8be8fb66c3acea7398c5b21b3404de597d16f8fd8ee5ec806dd0'

  url "https://moneywell.app/downloads/sparkle/MoneyWell-#{version}.zip"
  name 'MoneyWell'
  homepage 'https://moneywell.app/'

  app 'MoneyWell.app'
end
