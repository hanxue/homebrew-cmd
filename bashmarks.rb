class Bashmarks < Formula
  desc "Directory bookmarks for the shell"
  homepage "https://github.com/huyng/bashmarks"
  sha256 "1f0f2d5e201f1fdc1472f201f04430d809bf442ad034c194e70d8921823e990e"
  head "https://github.com/huyng/bashmarks.git"

  bottle :unneeded

  def install
    system "make", "install"
    bin.install "bashmarks.sh"
  end

  def caveats
    <<~EOS
      There are no released versions of bashmarks yet. To install

          brew install --HEAD bashmarks

      Add bashmarks to your startup script

        echo "source /usr/local/bin/bashmarks.sh" >> ~/.bash_profile
    EOS
  end

  test do
    system "source", "/usr/local/bin/bashmarks.sh"
    system "l"
  end
end
