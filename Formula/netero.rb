class Netero < Formula
  desc "Load Testing CLI"
  homepage "https://github.com/mckernant1/netero"
  url "https://github.com/mckernant1/netero/archive/refs/tags/0.0.7.tar.gz"
  sha256 "1380258470b28b8fe0e61430c9b1d2dc02a6ea6d78d71187adc0fcb5e893ce29"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/netero.bash"
    zsh_completion.install "completions/_netero"
  end

end
