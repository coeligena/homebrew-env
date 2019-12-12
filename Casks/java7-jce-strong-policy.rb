cask 'java7-jce-strong-policy' do
  version :latest
  sha256 :no_check

  module Utils
    def self.java_dir
      Dir.chdir('/Library/Java/JavaVirtualMachines/')
      Dir.glob('jdk1.7.*')[0] || 'jdk_doesnt_exist'
    end
  end

  url 'https://edelivery.oracle.com/otn-pub/java/jce/7/UnlimitedJCEPolicyJDK7.zip',
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java 7 Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy'
  homepage 'https://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html'

  preflight do
    unless File.exist?("/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar", "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar.backed_up"
    end
    unless File.exist?("/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar", "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up"
    end
  end
  preflight do
    unless File.exist?("/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar", "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar.backed_up"
    end
    unless File.exist?("/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up")
      system '/usr/bin/sudo', '-E', '--',
             '/bin/mv', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar", "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar.backed_up"
    end
  end

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-sf', "#{staged_path}/UnlimitedJCEPolicy/local_policy.jar", "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/ln', '-sf', "#{staged_path}/UnlimitedJCEPolicy/US_export_policy.jar", "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '--', 'root:wheel', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '--', 'root:wheel', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/chmod', '-h', 'a+r-x,ug+w,o-w', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar"
    system '/usr/bin/sudo', '-E', '--',
           '/bin/chmod', '-h', 'a+r-x,ug+w,o-w', "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar"
  end

  uninstall delete: [
                      "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar",
                      "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar",
                    ]
  uninstall delete: [
                      "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/local_policy.jar",
                      "/Library/Java/JavaVirtualMachines/#{Utils.java_dir}/Contents/Home/jre/lib/security/US_export_policy.jar",
                    ]
end
