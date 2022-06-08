class Netero < Formula
  desc "Load Testing CLI"
  homepage "https://github.com/mckernant1/netero"
  url "https://github.com/mckernant1/netero/archive/refs/tags/0.0.8.tar.gz"
  sha256 "38f01cd76d1885bd5ff7bdca23247dced16f875bc20d6f687a7de690492dd285"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/netero.bash"
    zsh_completion.install "completions/_netero"
  end

end
