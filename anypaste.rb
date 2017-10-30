class Anypaste < Formula
  desc "File sharing site aggregator for *nix-like systems"
  homepage "https://anypaste.xyz"
  url "https://github.com/markasoftware/anypaste/archive/v1.0.1.tar.gz"
  sha256 "f32d196d0be1aed06680f8a803abc59209596b96d3c99885817d8c059249154b"
  head "https://github.com/markasoftware/anypaste.git"

  bottle :unneeded

  def install
    bin.install "anypaste"
  end

  test do
    system "#{bin}/anypaste", "--help"
  end
end
