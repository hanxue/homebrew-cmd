class Anypaste < Formula
  desc "File sharing site aggregator for *nix-like systems"
  homepage "https://anypaste.xyz"
  url "https://github.com/markasoftware/anypaste/archive/v1.0.0.tar.gz"
  sha256 "e7816d4df6a71627fe18bc3af2a29cfe1bfc4e84f124120ca48be90fdb89a674"
  head "https://github.com/markasoftware/anypaste.git"

  bottle :unneeded

  def install
    bin.install "anypaste"
  end

  test do
    system "#{bin}/anypaste", "--help"
  end
end
