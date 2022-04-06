class Netero < Formula
  desc "Load Testing CLI"
  homepage "https://github.com/mckernant1/netero"
  url "https://github.com/mckernant1/netero/archive/refs/tags/0.0.6.tar.gz"
  sha256 "18654d98e4661a98aaab0b784e169c5b06023ea3595aa5377c9c6e03beb6999a"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/netero.bash"
    zsh_completion.install "completions/_netero"
  end

end
