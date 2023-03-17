cask "0horndis" do
  version ":latest"
  sha256 "a06f8d756f063108a9b9c0daa58c8fd379695e468b474056e753bb1236e170cc"

  url "https://github.com/nEdAy/HoRNDIS-for-M1/releases/download/rel9.2/HoRNDIS-M1.zip"
  name "HoRNDIS"
  desc "Android USB tethering driver for Apple Silicon"
  homepage "https://github.com/nEdAy/HoRNDIS-for-M1"

  depends_on macos: [
    :monterey,
    :ventura
  ]

  pkg "HoRNDIS-kext.pkg"

  caveats """
Installation steps

Disable SIP for kernel extensions
1.1. Restart your Mac in recovery mode by powering it off then restarting with a long press on the power button
1.2. Execute csrutil disable then csrutil enable --without kext
1.3. Restart mac to normal mode
Run the .pkg that you'll find in the .zip I uploaded.
"""

  uninstall kext:    "com.joshuawise.kexts.HoRNDIS",
            pkgutil: "com.joshuawise.*"
end
