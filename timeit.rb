class Timeit < Formula
  desc "A timer that times the next command"
  homepage "https://github.com/mckernant1/timeit"
  url "https://github.com/mckernant1/timeit/archive/0.2.0.tar.gz"
  sha256 "80c3ec48dffe4cf1115520de0437495eec9291ccb65d2d82744aac0f85c29e8b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
