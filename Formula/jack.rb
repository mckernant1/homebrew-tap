class Jack < Formula
  desc "Cloudwatch logs CLI"
  homepage "https://github.com/mckernant1/jack"
  url "https://github.com/mckernant1/jack/archive/refs/tags/0.0.3.tar.gz"
  sha256 "6947afa59f9ca718e53c590ce44e60b2648ccb8a2bfc0ca098050e6ca776bacf"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/jack.bash"
    zsh_completion.install "completions/_jack"
  end

end
