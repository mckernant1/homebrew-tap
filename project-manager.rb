class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.2.1.tar.gz"
  sha256 "35a97273fcd7a35033ed0fdd9e4165fe2e3ee71895c1735f43cdd01af0879ba2"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
