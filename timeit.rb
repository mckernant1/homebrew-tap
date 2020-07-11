class Timeit < Formula
  desc "A timer that times the next command"
  homepage "https://github.com/mckernant1/timeit"
  url "https://github.com/mckernant1/timeit/archive/0.3.0.tar.gz"
  sha256 "b29ca14e7415ace05e91a34a5dd2c26572158c131e82a1c3ab71fcc3c56445ca"

  depends_on "rust" => :build

  bottle do
    root_url "https://homebrew.bintray.com/bottles-tools"
    cellar :any_skip_relocation
    sha256 "2edd97f5bee9f1d125e848af665b09ba09560f60959714c102e9655b2027969d" => :catalina
  end

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

end
