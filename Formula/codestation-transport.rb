class CodestationTransport < Formula
  desc "Generates a script to make your new setup the same as your old one"
  homepage "https://github.com/mckernant1/codestation-transport"
  url "https://github.com/mckernant1/codestation-transport/archive/0.0.3.tar.gz"
  sha256 "a07734cfc21e4c8fdf8b6b6a86c130d32fdbc8431949b91ce39c7ca17aaee25e"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/codestation-transport.bash"
    zsh_completion.install "completions/_codestation-transport"
  end

end
