class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.2.tar.gz"
  sha256 "28e827aea256bb16b732c853fd4fd24949ff3e957d67ef884291bac86d3a8707"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
