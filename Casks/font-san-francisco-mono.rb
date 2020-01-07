cask 'font-san-francisco-mono' do
  version :latest
  sha256 :no_check

  url 'https://developer.apple.com/design/downloads/SF-Mono.dmg'
  name 'Apple San Francisco Mono Font'
  homepage 'https://developer.apple.com/fonts/'

  pkg 'SF Mono Fonts.pkg'

  uninstall delete: [
                      '/Library/Fonts/SF-Mono-HeavyItalic.otf',
                      '/Library/Fonts/SF-Mono-RegularItalic.otf',
                      '/Library/Fonts/SF-Mono-Bold.otf',
                      '/Library/Fonts/SF-Mono-BoldItalic.otf',
                      '/Library/Fonts/SF-Mono-Heavy.otf',
                      '/Library/Fonts/SF-Mono-HeavyItalic.otf',
                      '/Library/Fonts/SF-Mono-Light.otf',
                      '/Library/Fonts/SF-Mono-LightItalic.otf',
                      '/Library/Fonts/SF-Mono-Medium.otf',
                      '/Library/Fonts/SF-Mono-MediumItalic.otf',
                      '/Library/Fonts/SF-Mono-Regular.otf',
                      '/Library/Fonts/SF-Mono-Semibold.otf',
                      '/Library/Fonts/SF-Mono-SemiboldItalic.otf',
                    ]
end
