class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project-manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.3.tar.gz"
  sha256 "77809601f1c30f5e5f51c112ab8e07de55a3122fe8cfb9a49c1ec8457dbee5f1"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
