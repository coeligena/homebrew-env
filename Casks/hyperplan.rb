cask 'hyperplan' do
  version '2.9.5'
  sha256 ''

  url "https://www.hyperplan.com/downloads/HyperPlan_#{version.dots_to_hyphens}.dmg"
  name 'Hyper Plan'
  homepage 'https://www.hyperplan.com/'

  app 'HyperPlan.app'
end
