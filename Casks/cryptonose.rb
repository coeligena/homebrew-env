cask "cryptonose" do
  version "2.23.1"
  sha256 "b967e36a3b98e2b70567fc29fc42c870b222d5ffc2c1359feb7c362d00cbd6c6"

  url "https://github.com/dawidm/cryptonose2/releases/download/v#{version}/Cryptonose-#{version}.dmg"
  name "Cryptonose"
  desc ""
  homepage "https://dawidm.github.io/cryptonose2"

  app "Cryptonose.app"
end
