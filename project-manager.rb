class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.1.tar.gz"
  sha256 "2313adcdb5632e43e5844d8df652b462368b378920c3bfe0fc7b3a647ead0748"

  bottle do
    sha256 "67fef59bf562dcc1373cc9eb006d0ad13adbc5ae7ec399b82637a68e61683260" => :mojave
  end

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
