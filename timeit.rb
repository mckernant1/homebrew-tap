class Timeit < Formula
  desc "A timer that times the next command"
  homepage "https://github.com/mckernant1/timeit"
  url "https://github.com/mckernant1/timeit/archive/0.4.1.tar.gz"
  sha256 "430903a31ec80729ab818bcd546d31d2fc9f0a2d395629f50179da02bf7f3bd4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/timeit.bash"
    zsh_completion.install "completions/_timeit"
  end

end
