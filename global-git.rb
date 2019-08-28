class GlobalGit < Formula
  desc "A global git repo manager"
  homepage "https://github.com/mckernant1/global_git"
  url "https://github.com/mckernant1/global_git/archive/0.1.3.tar.gz"
  sha256 "3633d0dd034cf7517c0594303e4613b79065a0c6036a44df711e007cdda47543"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
