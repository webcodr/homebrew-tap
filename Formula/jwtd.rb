class Jwtd < Formula
  desc "Decode and pretty-print JSON Web Tokens with syntax highlighting"
  homepage "https://github.com/webcodr/jwtd"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/webcodr/jwtd/releases/download/v2.0.0/jwtd-darwin-arm64.tar.gz"
      sha256 "191258ee2e004ebca95964e33a04a2fd718468455a4c5876c5bddf4965639d67"
    else
      url "https://github.com/webcodr/jwtd/releases/download/v2.0.0/jwtd-darwin-amd64.tar.gz"
      sha256 "01dcf462be3afb4d727391958e1a81cf0bdf95ddd3e0d7b0a575f2d9aecd9fde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/webcodr/jwtd/releases/download/v2.0.0/jwtd-linux-arm64.tar.gz"
      sha256 "f992e3522d271e7fc641023d764375b01ed18331811928a62ec540fd0bc4eaf8"
    else
      url "https://github.com/webcodr/jwtd/releases/download/v2.0.0/jwtd-linux-amd64.tar.gz"
      sha256 "a60d19bf0db3df8136a126964dd552407fdb91c5673daa6bf3fbd1e14421704c"
    end
  end

  def install
    bin.install "jwtd"
  end

  test do
    assert_match "jwtd", shell_output("#{bin}/jwtd --help")
  end
end
