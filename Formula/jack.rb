class Jack < Formula
  desc "Cloudwatch logs CLI"
  homepage "https://github.com/mckernant1/jack"
  url "https://github.com/mckernant1/jack/archive/refs/tags/0.0.2.tar.gz"
  sha256 "0deec225c7a0f4040da0a25306e2be311f2791f669b0f442569eab5c4d5912b0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/jack.bash"
    zsh_completion.install "completions/_jack"
  end

end
