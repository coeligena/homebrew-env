cask 'svp' do
  version :latest
  sha256 'f3c8b6a48c2ea003a557da04bd35f086366138b61ed6bd4f5dc79ec1f54d2256'

  url 'https://www.svp-team.com/files/svp4-latest.php?mac'
  name 'SVP'
  homepage 'https://www.svp-team.com/'

  depends_on macos: '>= :el_capitan'
  # depends_on formula: 'mpv'
  depends_on cask: 'iina'

  app 'SVP 4 Mac.app', target: 'SVP Mac.app'

  postflight do
    system 'mpv --version > /dev/null 2>&1'
    system 'touch', '-a', "#{ENV['HOME']}/.config/mpv/mpv.conf"
    IO.write "#{ENV['HOME']}/.config/mpv/mpv.conf", <<~EOS
      input-ipc-server=/tmp/mpvsocket
      hwdec-codecs=all
      hwdec=auto-copy
      opengl-early-flush=no
      hr-seek-framedrop=no
    EOS
  end

  uninstall delete: [
                      '~/Library/Application Support/SVP4/logs',
                      '~/Library/Application Support/SVP4/scripts',
                    ]

  zap trash: [
               '~/Library/Application Support/SVP4',
               '~/Library/Preferences/com.svp-team.svpmanager.plist',
               '~/Library/Saved Application State/com.svp-team.svpmanager.savedState',
             ]

  def caveats
    <<~EOS
      1. Install IINA, let's assume that you've it in /Applications/IINA.app. Run it for the first time, then exit.

      2. Open Terminal and remove all the libmpv.* files distributed with IINA:
        rm -f /Applications/IINA.app/Contents/Frameworks/libmpv.*

      3. Run IINA again, open Preferences, go to the Advanced section. Check the Enable advanced settings option, then add a few options into the Additional mpv options field:
        input-ipc-server=/tmp/iinasocket
        hr-seek-framedrop=no

      4. Go to the Video/Audio section and set Hardware decoder to Auto (copy)

      5. Open SVP menu -> Application settings -> Additional options -> All settings, find main.setup.mpv value and change it to
        /tmp/mpvsocket;/tmp/iinasocket

      6. Restart both IINA and SVP

      More info: https://www.svp-team.com/wiki/SVP:IINA
    EOS
  end
end
