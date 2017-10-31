class ParseYaml < Formula
  desc "Bash script that parses a YAML file"
  homepage "https://github.com/hanxue/parse_yaml"
  url "https://github.com/hanxue/parse_yaml/archive/59135cc.tar.gz"
  version "0.1.0"
  sha256 "654a9888b6320dc210c354faca8e13f2df1508105f8865404073e08a4dbd145d"

  bottle :unneeded

  def install
    prefix.install "sample.yml"
    bin.install "parse_yaml"
  end

  test do
    system "#{bin}/parse_yaml", "#{prefix}/sample.yml"
  end
end
