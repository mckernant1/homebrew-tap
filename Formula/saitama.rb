class Saitama < Formula
  desc "Load Testing CLI"
  homepage "https://github.com/mckernant1/saitama"
  url "https://github.com/mckernant1/saitama/archive/refs/tags/0.0.1.tar.gz"
  sha256 "9a536dd544b0d68a01cd76b7e48d1604f0a2f2a92e8d3a70d072f8da3d9395cc"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    # bash_completion.install "completions/saitama.bash"
    # zsh_completion.install "completions/_saitama"
  end

end
