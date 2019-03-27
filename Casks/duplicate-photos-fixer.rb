cask 'duplicate-photos-fixer' do
  version '1.7'
  sha256 '3637466c0f6eb3bdb2c58cbee4efcc2315b60d03c11e1b22fd2efc784013d4e3'

  url 'http://cfn.duplicatephotofixer.com/dpf/promoteself/duplicatephotosfixer.zip'
  appcast 'http://cfn.duplicatephotofixer.com/dpf/promoteself/dpf.xml'
  name 'Duplicate Photos Fixer App'
  homepage 'https://duplicatephotosfixer.com/Photofixer.aspx'

  app 'Duplicate Photos Fixer.app'
end
