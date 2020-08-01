class Timeit < Formula
  desc "A timer that times the next command"
  homepage "https://github.com/mckernant1/timeit"
  url "https://github.com/mckernant1/timeit/archive/0.4.0.tar.gz"
  sha256 "c44c8ac9c41aed658972734df0cd73859c9cb6f897e5540ded4a5c6e2214fb1f"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

end
