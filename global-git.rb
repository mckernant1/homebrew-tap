class GlobalGit < Formula
  desc "A global git repo manager"
  homepage "https://github.com/mckernant1/global_git"
  url "https://github.com/mckernant1/global_git/archive/0.1.2.tar.gz"
  sha256 "51c27212c7eed563e4fd504fcc519b3e8b92a2fbff752f74cd28baa6591b5d5e"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
