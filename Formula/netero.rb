class Netero < Formula
  desc "Load Testing CLI"
  homepage "https://github.com/mckernant1/netero"
  url "https://github.com/mckernant1/netero/archive/refs/tags/0.0.9.tar.gz"
  sha256 "66c2a66e2a75d1168ace9311a8a666cf436ec7074a3eb6b7a4995c027c50716f"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/netero.bash"
    zsh_completion.install "completions/_netero"
  end

end
