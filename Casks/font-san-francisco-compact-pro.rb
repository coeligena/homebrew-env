cask 'font-san-francisco-compact-pro' do
  version :latest
  sha256 :no_check

  url 'https://devimages-cdn.apple.com/design/downloads/SF-Font.dmg'
  name 'Apple San Francisco Compact & Pro Fonts'
  homepage 'https://developer.apple.com/fonts/'

  # SF Compact
  font 'SF Compact/SFCompactDisplay-Black.otf'
  font 'SF Compact/SFCompactDisplay-Bold.otf'
  font 'SF Compact/SFCompactDisplay-Heavy.otf'
  font 'SF Compact/SFCompactDisplay-Light.otf'
  font 'SF Compact/SFCompactDisplay-Medium.otf'
  font 'SF Compact/SFCompactDisplay-Regular.otf'
  font 'SF Compact/SFCompactDisplay-Semibold.otf'
  font 'SF Compact/SFCompactDisplay-Thin.otf'
  font 'SF Compact/SFCompactDisplay-Ultralight.otf'
  font 'SF Compact/SFCompactText-Bold.otf'
  font 'SF Compact/SFCompactText-BoldItalic.otf'
  font 'SF Compact/SFCompactText-Heavy.otf'
  font 'SF Compact/SFCompactText-HeavyItalic.otf'
  font 'SF Compact/SFCompactText-Light.otf'
  font 'SF Compact/SFCompactText-LightItalic.otf'
  font 'SF Compact/SFCompactText-Medium.otf'
  font 'SF Compact/SFCompactText-MediumItalic.otf'
  font 'SF Compact/SFCompactText-Regular.otf'
  font 'SF Compact/SFCompactText-RegularItalic.otf'
  font 'SF Compact/SFCompactText-Semibold.otf'
  font 'SF Compact/SFCompactText-SemiboldItalic.otf'
  # SF Pro
  font 'SF Pro/SF-Pro-Display-Black.otf'
  font 'SF Pro/SF-Pro-Display-ThinItalic.otf'
  font 'SF Pro/SF-Pro-Display-BlackItalic.otf'
  font 'SF Pro/SF-Pro-Display-Ultralight.otf'
  font 'SF Pro/SF-Pro-Display-Bold.otf'
  font 'SF Pro/SF-Pro-Display-UltralightItalic.otf'
  font 'SF Pro/SF-Pro-Display-BoldItalic.otf'
  font 'SF Pro/SF-Pro-Text-Bold.otf'
  font 'SF Pro/SF-Pro-Display-Heavy.otf'
  font 'SF Pro/SF-Pro-Text-BoldItalic.otf'
  font 'SF Pro/SF-Pro-Display-HeavyItalic.otf'
  font 'SF Pro/SF-Pro-Text-Heavy.otf'
  font 'SF Pro/SF-Pro-Display-Light.otf'
  font 'SF Pro/SF-Pro-Text-HeavyItalic.otf'
  font 'SF Pro/SF-Pro-Display-LightItalic.otf'
  font 'SF Pro/SF-Pro-Text-Light.otf'
  font 'SF Pro/SF-Pro-Display-Medium.otf'
  font 'SF Pro/SF-Pro-Text-LightItalic.otf'
  font 'SF Pro/SF-Pro-Display-MediumItalic.otf'
  font 'SF Pro/SF-Pro-Text-Medium.otf'
  font 'SF Pro/SF-Pro-Display-Regular.otf'
  font 'SF Pro/SF-Pro-Text-MediumItalic.otf'
  font 'SF Pro/SF-Pro-Display-RegularItalic.otf'
  font 'SF Pro/SF-Pro-Text-Regular.otf'
  font 'SF Pro/SF-Pro-Display-Semibold.otf'
  font 'SF Pro/SF-Pro-Text-RegularItalic.otf'
  font 'SF Pro/SF-Pro-Display-SemiboldItalic.otf'
  font 'SF Pro/SF-Pro-Text-Semibold.otf'
  font 'SF Pro/SF-Pro-Display-Thin.otf'
  font 'SF Pro/SF-Pro-Text-SemiboldItalic.otf'

  caveats <<~EOS
    The Apple San Francisco Compact/Pro font is to be used solely for creating
    mock-ups of user interfaces to be used in software products
    running on Apple’s iOS or OS X operating systems, as applicable.
  EOS
end
