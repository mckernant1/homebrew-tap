class GlobalGit < Formula
  desc "A global git repo manager"
  homepage "https://github.com/mckernant1/global_git"
  url "https://github.com/mckernant1/global_git/archive/0.0.1.tar.gz"
  sha256 "1fdcc6dd518495b53180093c47cec48cda3e80894ceec741c6c3808a4360ed88"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
