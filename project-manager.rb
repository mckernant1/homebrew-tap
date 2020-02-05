class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project-manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.3.tar.gz"
  sha256 "d76334749c58ce1f7d35c418bdda0d1a2a5740f62bb3e8b95c4887b9b91dd9b5"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
