class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project_manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.1.tar.gz"
  sha256 "2313adcdb5632e43e5844d8df652b462368b378920c3bfe0fc7b3a647ead0748"

  bottle do
    cellar :any_skip_relocation
    rebuild 1
    sha256 "3f49d8f6bc1b3b5b8513ad1659c3cbb4cb8f00bf3fc0d32e2222f60cc8cfa0a2" => :mojave
  end

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
