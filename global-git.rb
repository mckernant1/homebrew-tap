class GlobalGit < Formula
  desc "A global git repo manager"
  homepage "https://github.com/mckernant1/global_git"
  url "https://github.com/mckernant1/global_git/archive/0.1.1.tar.gz"
  sha256 "70b48eac9cd9c237d3ca27f4187d600f21f060a544ecad4a24ccdfc9b9da7792"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
