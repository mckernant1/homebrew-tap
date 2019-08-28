class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.2.0.tar.gz"
  sha256 "5d0783f4bbe8dde37203fa9ac9c3c0bcd0d403d39b26bbc362d1457ea3a1aa5a"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
