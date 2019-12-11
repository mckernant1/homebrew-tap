class Timeit < Formula
  desc "A timer that times the next command"
  homepage "https://github.com/mckernant1/timeit"
  url "https://github.com/mckernant1/timeit/archive/0.1.0.tar.gz"
  sha256 "8480a69627d49fe877d21d07670f340ad894385e9f64ec25a0c9906e37f571f5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
