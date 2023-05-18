cask "core-helper" do
  version "6.6"
  sha256 "8bc555768fe5f1803530e3e97de91c3fd1118447e96cc4d653af0dcfc51f84ad"

  url "https://codinn.com/download/Core%20Helper%20Installer-#{version}.zip"
  name "Core Helper"
  desc "Core Shell Helper"
  homepage "https://community.codinn.com/t/core-helper/1103"

  installer manual: 'Core Helper Installer.app'

  postflight do
    sleep 5
    puts 'Press Enter after installing to continue to remove artifacts...'
    ignored = STDIN.gets
    puts 'Removing artifacts...'
    system_command '/bin/rm',
                   args: [
                           '-R',
                           "#{staged_path}/Core Helper Installer.app",
                         ]
  end

  # installer script: {
  #   executable: "logioptionsplus_installer.app/Contents/MacOS/logioptionsplus_installer",
  #   args:       ["--quiet"],
  #   sudo:       true,
  # }

  uninstall delete:    [
              "#{Dir.home}/Library/Group Containers/E78WKS7W4U.io.coressh/io.coressh.Helper.app",
            ],
            launchctl: [
              # "io.coressh.Helper",
              # "io.coressh.helper",
              "E78WKS7W4U.io.coressh.helper",
            ],
            quit:      [
              "E78WKS7W4U.io.coressh.helper",
              # "io.coressh.Helper",
            ]
end
