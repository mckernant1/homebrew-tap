class Saitama < Formula
  desc "Load Testing CLI"
  homepage "https://github.com/mckernant1/saitama"
  url "https://github.com/mckernant1/saitama/archive/refs/tags/0.0.2.tar.gz"
  sha256 "af9ab03136ea750a56215973d01bc04b66a6cd94a55a268e18c79eff6cff73c8"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/saitama.bash"
    zsh_completion.install "completions/_saitama"
  end

end
