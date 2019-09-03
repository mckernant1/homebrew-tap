class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.0.tar.gz"
  sha256 "0ab4bd769eca29e7a92fc5a3e8108cb7ccdbf31202e01ee92b21f99b3dd7ab60"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
