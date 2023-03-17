cask "kryptor" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256  arm:   "e3ef106e25aea4971853cc0e84116bd7a0fe7057e8b6a2907a248ea8a1faeb4e",
          intel: "8d25efeb3f992c63b79b0a118546cb5a86e0b6ea75cfc3839a5de673033046ba"
  
  on_intel do
  end
  
  url "https://github.com/samuel-lucas6/Kryptor/releases/latest/download/kryptor-macos-#{arch}.zip",
      verified: "github.com/samuel-lucas6/Kryptor/"
  name "Kryptor"
  desc "An open source encryption and signing tool"
  homepage "https://www.kryptor.co.uk/"

  binary "kryptor"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/.kryptor"
  ]
end
