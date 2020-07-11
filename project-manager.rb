class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project-manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.4.tar.gz"
  sha256 "bf3bc8e688c1c7d5e02135ea2f99792fd3b6e815f6fa785b5ffbf9dac4646718"

  depends_on "rust" => :build
  depends_on "git"

  bottle do
    root_url "https://homebrew.bintray.com/bottles-tools"
    cellar :any_skip_relocation
    sha256 "a359f64449817dffd32a6e9d3e7f3eab1dd5063a48056f98c95ac2aca1c06361" => :catalina
  end

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

end
