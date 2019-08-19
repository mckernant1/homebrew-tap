class Uwucat < Formula
  desc "A cat clone that translates to uwutext"
  homepage "https://github.com/mckernant1/uwucat"
  url "https://github.com/mckernant1/uwucat/archive/0.0.1.tar.gz"
  sha256 "2d49473c9c1fca4465e2a61ea3e65df0ad15b5e4bca0b87d6c01b02e8babfa0d"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
