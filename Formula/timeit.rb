class Timeit < Formula
  desc "A timer that times the next command"
  homepage "https://github.com/mckernant1/timeit"
  url "https://github.com/mckernant1/timeit/archive/0.4.3.tar.gz"
  sha256 "d0da53796457cbcd0f8a1791c1c0431f73ec44546c4dcaf06be710a0219e34e9"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/timeit.bash"
    zsh_completion.install "completions/_timeit"
  end

end
