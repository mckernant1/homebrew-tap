class Mumen < Formula
  desc "Load Testing CLI"
  homepage "https://github.com/mckernant1/mumen"
  url "https://github.com/mckernant1/mumen/archive/refs/tags/0.0.5.tar.gz"
  sha256 "6c122e6ce8d5762d6615832ee00ca5f07823bac1fdf732123a22e84df43eb5a3"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/mumen.bash"
    zsh_completion.install "completions/_mumen"
  end

end
