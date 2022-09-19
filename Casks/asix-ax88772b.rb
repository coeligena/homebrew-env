cask "asix-ax88772b" do
  if MacOS.version <= :catalina
    version "2.11.0,296"

    container nested: "AX88772B_macOS_10.9_to_10.15_Driver_Installer_v#{version.before_comma}/AX88772B_v#{version.before_comma}.dmg"
    pkg "AX88772B_10.15.pkg"

    livecheck do
      url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
      regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*10.*?Vision\s*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
      strategy :page_match do |page, regex|
        page.split(/class=['"]?list__item['"]?/).map do |list_item|
          list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
        end.flatten
      end
    end
  elsif MacOS.version <= :big_sur
    version "1.3.0,1304"

    container nested: "ASIX_USB_Device_Installer_macOS_11.3_to11.6_Driver_v#{version.before_comma}_20220706/ASIX_USB_Device_Installer_v#{version.before_comma}.dmg"
    pkg "ASIX_USB_Device_Installer_v#{version.before_comma}.pkg"

    livecheck do
      url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
      regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*11.*?Vision\s*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
      strategy :page_match do |page, regex|
        page.split(/class=['"]?list__item['"]?/).map do |list_item|
          list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
        end.flatten
      end
    end
  else
    version "2.2.0,1313"

    container nested: "ASIX_USB_Device_Installer_macOS_12_Driver_v#{version.before_comma}/ASIX_USB_Device_Installer_v#{version.before_comma}.dmg"
    pkg "ASIX_USB_Device_Installer_v#{version.before_comma}.pkg"

    livecheck do
      url "https://www.asix.com.tw/en/support/download/step2/11/2/3"
      regex(%r{data-href=.*?/download/file/(\d+).*?macOS\s*12.*?Vision\s*?(?:<br>)?\s*?(\d+(?:\.\d+)+)<}mi)
      strategy :page_match do |page, regex|
        page.split(/class=['"]?list__item['"]?/).map do |list_item|
          list_item.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
        end.flatten
      end
    end
  end
  sha256 :no_check

  url "https://www.asix.com.tw/en/support/download/file/#{version.csv.second}"
  name "AX88772B"
  desc "USB to ethernet drivers for ASIX Electronics devices"
  homepage "https://www.asix.com.tw/en/support/download"

  uninstall_preflight do
    if MacOS.version <= :catalina
      staged_path.glob("AX88772B_Uninstall_v*.pkg").first.rename(staged_path/"AX88772B_Uninstall.pkg")
    else
      staged_path.glob("ASIX_USB_Device_Uninistaller_v*.pkg").first.rename(staged_path/"AX88772B_Uninstall.pkg")
    end

    system_command "/usr/sbin/installer",
                   args: [
                     "-pkg", staged_path/"AX88772B_Uninstall.pkg",
                     "-target", "/"
                   ],
                   sudo: true
  end

  uninstall pkgutil: [
    "com.asix.products",
    "com.asix.pkg.ASIXUSBDeviceAppInstaller",
    "com.mygreatcompany.pkg.ASIXUSBDeviceAPPUninstall",
  ],
            delete: [
    "/Applications/ASIX_USB_Device_App.app"
  ]

  caveats do
    reboot
  end
end
