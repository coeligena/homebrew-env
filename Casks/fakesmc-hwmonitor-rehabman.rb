cask 'fakesmc-hwmonitor-rehabman' do
  version '2018-0915'
  sha256 'f7e8377a0eb9e971dfdb03fcbc9374d98c680e1af672d0d8c27b9d88d1d4fd92'

  url "https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/RehabMan-FakeSMC-#{version}.zip"
  name 'RehabMan OS-X-FakeSMC-kozlek + HWMonitor'
  homepage 'https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/'

  app 'HWMonitor.app'

  artifact 'FakeSMC.kext', target: "/#{ENV['HOME']}/Desktop/INSTL_THS_KXTS/FakeSMC.kext"
  artifact 'FakeSMC_SMMSensors.kext', target: "/#{ENV['HOME']}/Desktop/INSTL_THS_KXTS/FakeSMC_SMMSensors.kext"
  artifact 'FakeSMC_ACPISensors.kext', target: "/#{ENV['HOME']}/Desktop/INSTL_THS_KXTS/FakeSMC_ACPISensors.kext"
  artifact 'FakeSMC_CPUSensors.kext', target: "/#{ENV['HOME']}/Desktop/INSTL_THS_KXTS/FakeSMC_CPUSensors.kext"
  artifact 'FakeSMC_GPUSensors.kext', target: "/#{ENV['HOME']}/Desktop/INSTL_THS_KXTS/FakeSMC_GPUSensors.kext"
  artifact 'FakeSMC_LPCSensors.kext', target: "/#{ENV['HOME']}/Desktop/INSTL_THS_KXTS/FakeSMC_LPCSensors.kext"
end
