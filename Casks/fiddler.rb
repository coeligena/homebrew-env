cask 'fiddler' do
  version 'Beta 1'
  sha256 '3e61c6b3174df621fa2f8e5afa9504e8e68aae77da8bef285586aa1ad4b9d921'

  url 'https://telerik-fiddler.s3.amazonaws.com/fiddler/fiddler-mac.zip'
  name 'Fiddler'
  homepage 'https://www.telerik.com/download/fiddler/fiddler-osx-beta'

  depends_on cask: 'mono-mdk'

  suite ".", :target => 'Fiddler'

  shimscript = "#{staged_path}/fiddler.wrapper.sh"
  binary "#{appdir}/Fiddler/fiddler.wrapper.sh", target: 'fiddler'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
      mono '#{appdir}/Fiddler/Fiddler.exe' "$@"
    EOS
    system_command '/Library/Frameworks/Mono.framework/Versions/Current/bin/mozroots',
                   args: ['--import', '--sync'],
                   sudo: true
  end

  caveats <<~EOS
    #{token} depends on Mono. It's automatically installed by this cask.
  EOS
end
