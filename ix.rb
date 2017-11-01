class Ix < Formula
  desc "Command-line pastebin to ix.io"
  homepage "http://ix.io"
  sha256 "f32d196d0be1aed06680f8a803abc59209596b96d3c99885817d8c059249154b"
  head "http://ix.io/client"

  bottle :unneeded

  def install
    bin.install "client" => "ix"
  end

  def caveats
    <<~EOS
      There are no released versions of ix client yet. To install

          $ brew install --HEAD anypaste
    EOS
  end

  test do
    system "#{bin}/ix", "-h"
  end
end
