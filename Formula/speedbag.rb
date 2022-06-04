class Speedbag < Formula
  desc "Sample Server"
  homepage "https://github.com/mckernant1/speedbag"
  url "https://github.com/mckernant1/speedbag/archive/refs/tags/0.0.3.tar.gz"
  sha256 "fb692452d5963feaddd5dfac94e6f4fa225e29be33253476e9eb9cdeacf0e56a"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/speedbag.bash"
    zsh_completion.install "completions/_speedbag"
  end

end
