cask 'hyperplan' do
  version '2.10.1'
  sha256 '2834ee5ce43528fbe93487883f4716621c80b946751b2fc95b0bd18d6371e298'

  url "https://www.hyperplan.com/downloads/HyperPlan_#{version.dots_to_underscores}n.dmg"
  name 'Hyper Plan'
  homepage 'https://www.hyperplan.com/'

  app 'HyperPlan.app'
end
