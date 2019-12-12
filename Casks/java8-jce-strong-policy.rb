cask 'java8-jce-strong-policy' do
  version '8.0_202'
  sha256 'f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59'

  url 'https://edelivery.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip',
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy'
  homepage 'https://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html'

  preflight do
    unless File.exist?("/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar", "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar.backed_up"
    end
    unless File.exist?("/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar", "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up"
    end
    unless File.exist?('/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar.backed_up')
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar.backed_up'
    end
    unless File.exist?('/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar.backed_up')
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar.backed_up'
    end
  end
  preflight do
    unless File.exist?("/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar", "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar.backed_up"
    end
    unless File.exist?("/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar", "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up"
    end
    unless File.exist?('/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar.backed_up')
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar.backed_up'
    end
    unless File.exist?('/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar.backed_up')
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar.backed_up'
    end
  end

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-sf', "#{staged_path}/UnlimitedJCEPolicyJDK8/local_policy.jar", "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-sf', "#{staged_path}/UnlimitedJCEPolicyJDK8/US_export_policy.jar", "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-sf', "#{staged_path}/UnlimitedJCEPolicyJDK8/local_policy.jar", '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar'
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-sf', "#{staged_path}/UnlimitedJCEPolicyJDK8/US_export_policy.jar", '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar'
    system '/usr/bin/sudo', '-E', '--',
           'chown', '--', 'root:wheel', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           'chown', '--', 'root:wheel', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           'chmod', '--', 'a+r-x,ug+w,o-w', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           'chmod', '--', 'a+r-x,ug+w,o-w', "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           'chmod', '--', 'a+r-x,ug+w,o-w', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar'
    system '/usr/bin/sudo', '-E', '--',
           'chmod', '--', 'a+r-x,ug+w,o-w', '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar'
  end

  uninstall delete: [
                      "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar",
                      "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar",
                      '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar',
                      '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar',
                    ]
  uninstall delete: [
                      "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar",
                      "/Library/Java/JavaVirtualMachines/jdk1.#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar",
                      '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/local_policy.jar',
                      '/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security/US_export_policy.jar',
                    ]
end
