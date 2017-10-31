class Ydcv < Formula
  desc "File sharing site aggregator for *nix-like systems"
  homepage "https://anypaste.xyz"
  url "https://github.com/felixonmars/ydcv/archive/0.4.tar.gz"
  sha256 "2d9f6309bbf2d35c0c34c5ee945cf40769cc8201e6f374fa2a4f2d4b827fbdbb"

  bottle :unneeded

  def install
    bin.install "ydcv.py" => "ydcv"
  end

  test do
    system "#{bin}/ydcv", "--help"
  end
end
