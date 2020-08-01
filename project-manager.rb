class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project-manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.4.tar.gz"
  sha256 "bf3bc8e688c1c7d5e02135ea2f99792fd3b6e815f6fa785b5ffbf9dac4646718"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

end
