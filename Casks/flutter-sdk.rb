cask 'flutter-sdk' do

  name "Flutter"
  homepage "https://www.flutter.dev"

  version "1.2.1"
  sha256 "74ac8397ea29720f116980ea00cf60c34430be1f64489b407f7cf95553babbef"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v#{version}-stable.zip"

  caveats do
  end

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
    safe_system "#{staged_path}/flutter/bin/flutter doctor"
  end

  caveats do
    <<~EOS
      Android SDK must be installed at environment variable ANDROID_HOME
      usbmuxd should be linked:  brew link usbmuxd
      Flutter analytics tracking can be DISABLED via:  flutter config --no-analytics
      To add bash completions run:  flutter bash-completion "#{staged_path}/../flutter-bash-completion.bash.inc"
      And add the resulting file to source via:  source '#{staged_path}/../flutter-bash-completion.bash.inc'
      Install Cocoapods for iOS builds, and then run:  pod setup
      You may want to add to your profile:
        'source <(flutter bash-completion)'
    EOS
  end
end
