cask 'bowtie' do
  version '1.5'
  sha256 'd8406b066851c0730ca052036bedd5ded82019403de1fd58b579da34cfa4a948'

  url "http://bowtieapp.com/bowtie-#{version}.zip"
  name 'Bowtie'
  homepage 'http://bowtieapp.com/'

  app "Bowtie #{version}/Bowtie.app"
end
