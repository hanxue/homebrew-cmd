class Anypaste < Formula
  desc "Upload and share any file with a single command."
  homepage "https://anypaste.xyz"
  # url "https://raw.githubusercontent.com/markasoftware/anypaste/master/anypaste"
  sha256 "1f0f2d5e201f1fdc1472f201f04430d809bf442ad034c194e70d8921823e990e"
  head "https://github.com/markasoftware/anypaste.git"

  bottle :unneeded

  def install
    bin.install "anypaste"
  end

  def caveats
    <<~EOS
      There are no released versions of anypaste yet. To install

          $ brew install --HEAD anypaste
    EOS
  end

  test do
    system "#{bin}/anypaste", "--help"
  end
end
