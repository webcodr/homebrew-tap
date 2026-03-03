class Jwtd < Formula
  desc "Decode and pretty-print JSON Web Tokens with syntax highlighting"
  homepage "https://github.com/webcodr/jwtd"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/webcodr/jwtd/releases/download/v1.2.0/jwtd-darwin-arm64.tar.gz"
      sha256 "ff64da48db4aa68f7da49777d548b996cd4b3f3c1a8858b068a0e1ee3a58d7fb"
    else
      url "https://github.com/webcodr/jwtd/releases/download/v1.2.0/jwtd-darwin-amd64.tar.gz"
      sha256 "a45b7d1d663b9d0b0fcfac6b6ed1da448d904d94c849066cbca6c7d8674507cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/webcodr/jwtd/releases/download/v1.2.0/jwtd-linux-arm64.tar.gz"
      sha256 "f1b1f698f60b61d4184570022120eb318851e9cb231c5406ca43b679efec0f95"
    else
      url "https://github.com/webcodr/jwtd/releases/download/v1.2.0/jwtd-linux-amd64.tar.gz"
      sha256 "aa1e57cf0fb2f41a78cacd21404cb7b539f97e61a5482de799cf1ecb6327dd56"
    end
  end

  def install
    bin.install "jwtd"
  end

  test do
    assert_match "jwtd", shell_output("#{bin}/jwtd --help")
  end
end
