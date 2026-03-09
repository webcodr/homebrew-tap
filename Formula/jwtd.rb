class Jwtd < Formula
  desc "Decode and pretty-print JSON Web Tokens with syntax highlighting"
  homepage "https://github.com/webcodr/jwtd"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/webcodr/jwtd/releases/download/v2.1.0/jwtd-darwin-arm64.tar.gz"
      sha256 "2280063e68c4eac7e8a6c7c5e6b46efac97967fb612d287f0972e4d06970cc65"
    else
      url "https://github.com/webcodr/jwtd/releases/download/v2.1.0/jwtd-darwin-amd64.tar.gz"
      sha256 "232381e862d3db17b3510026abbe27ad2b99b57091fc804669e794f114a407f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/webcodr/jwtd/releases/download/v2.1.0/jwtd-linux-arm64.tar.gz"
      sha256 "8527bdbfd47050b6470672091c1ed44a8ab72081ffab60ac5a58ae9b9f7f0038"
    else
      url "https://github.com/webcodr/jwtd/releases/download/v2.1.0/jwtd-linux-amd64.tar.gz"
      sha256 "245d1b4e8d341c1a343ceb2c502099a693ca4ac50d5185ba2208841c7a0dfae0"
    end
  end

  def install
    bin.install "jwtd"
  end

  test do
    assert_match "jwtd", shell_output("#{bin}/jwtd --help")
  end
end
