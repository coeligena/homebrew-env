cask 'flutter-sdk' do

  name "Flutter"
  homepage "https://www.flutter.dev"

  version "latest"
  sha256 "9bee10962848b138a0e47764de270123444fae35f6b0dc44615560eff633c634"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v#{"1.9.1+hotfix.4"}-stable.zip"

  depends_on formula: "usbmuxd"
  depends_on formula: "libimobiledevice"
  depends_on formula: "ideviceinstaller"
  depends_on formula: "ios-deploy"
#  depends_on formula: "cocoapods"
#  depends_on cask: "android-sdk"
  depends_on cask: "visual-studio-code"
  depends_on :arch => :x86_64

  binary "#{staged_path}/flutter/bin/flutter"

  postflight do
    safe_system "#{staged_path}/flutter/bin/flutter config --no-analytics"
    safe_system "#{staged_path}/flutter/bin/flutter doctor"
  end

  caveats do
    <<~EOS
      Android SDK must be installed at environment variable ANDROID_SDK_ROOT
      usbmuxd should be linked:  brew link usbmuxd
      
      Flutter analytics tracking can be DISABLED via:  flutter config --no-analytics
        # Already done automatically by this cask!
      
      You may want to add to your profile:
        'source <(flutter bash-completion)'
      To add bash completions run:  flutter bash-completion --overwrite "#{staged_path}/../flutter-bash-completion.bash.inc"
      And add the resulting file to source via:  source '#{staged_path}/../flutter-bash-completion.bash.inc'

      You may want to add to your profile:
        'source <(flutter zsh-completion)'
      To add zsh completions run:  flutter zsh-completion --overwrite "#{staged_path}/../flutter-bash-completion.zsh.inc"
      And add the resulting file to source via:  source '#{staged_path}/../flutter-bash-completion.zsh.inc'

      Install Cocoapods for iOS builds, and then run:  pod setup

      You may wish to add the flutter-ROOT install location to your PATH: (It's already in /usr/local/bin !!!)
        echo 'export PATH="#{staged_path}/bin:$PATH"' >> ~/.zshrc
    EOS
  end
end
