class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.2.2.tar.gz"
  sha256 "286459f7ab479ab0a32d545fe39a292207c3e2e9a99fc77dcd6815fdb8edaec9"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
