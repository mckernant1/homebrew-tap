class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.1.tar.gz"
  sha256 "2313adcdb5632e43e5844d8df652b462368b378920c3bfe0fc7b3a647ead0748"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
