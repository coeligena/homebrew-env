cask 'ipaql' do
  version '1.5'
  sha256 'bfe5ea85f45713b621a5466b166f19f004cc461b2265fdc58795dd3fb670a8d0'

  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/quicklook-ipa/IPA%20Quick%20Look%20Plugin%20#{version}.dmg"
  name 'CocoaDeveloper Quicklook Plugin'
  homepage 'https://code.google.com/archive/p/quicklook-ipa/'

  pkg 'IPA Quick Look Plugin.pkg'
end
