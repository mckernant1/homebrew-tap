class Speedbag < Formula
  desc "Sample Server"
  homepage "https://github.com/mckernant1/speedbag"
  url "https://github.com/mckernant1/speedbag/archive/refs/tags/0.0.2.tar.gz"
  sha256 "3a6dd751e7e50b48c11ecb066bf160af6f53bc1584984cbd2f9a79255014ad25"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/speedbag.bash"
    zsh_completion.install "completions/_speedbag"
  end

end
