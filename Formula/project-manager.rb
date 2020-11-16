class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project-manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.6.tar.gz"
  sha256 "1c79cb4e51997ead57d5b8a3d2bc62131d586646c24ffec7ecd724a2927757a9"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/project-manager.bash"
    zsh_completion.install "completions/_project-manager"
  end

end
