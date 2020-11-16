class CodestationTransport < Formula
  desc "Generates a script to make your new setup the same as your old one"
  homepage "https://github.com/mckernant1/codestation-transport"
  url "https://github.com/mckernant1/codestation-transport/archive/0.0.2.tar.gz"
  sha256 "dcd8c9591570ec2164ef51ff7af9343fc17c815a4969e2571195af5d2c33a2cc"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/codestation-transport.bash"
    zsh_completion.install "completions/_codestation-transport"
  end

end
