class CodestationTransport < Formula
  desc "Generates a script to make your new setup the same as your old one"
  homepage "https://github.com/mckernant1/codestation-transport"
  url "https://github.com/mckernant1/codestation-transport/archive/0.0.1.tar.gz"
  sha256 "7517b9a2818333a308434f02960708262deb708be913b09e6f248ee0df74532d"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/codestation-transport.bash"
    zsh_completion.install "completions/_codestation-transport"
  end

end
