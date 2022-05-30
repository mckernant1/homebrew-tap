class Speedbag < Formula
  desc "Sample Server"
  homepage "https://github.com/mckernant1/speedbag"
  url "https://github.com/mckernant1/speedbag/archive/refs/tags/0.0.1.tar.gz"
  sha256 "a07a81f08347290ea6e4079eb216cefc5fa03ea2ebcb45e60436467da77aa3fb"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/speedbag.bash"
    zsh_completion.install "completions/_speedbag"
  end

end
