class ProjectManager < Formula
  desc "Your personal project manager"
  homepage "https://github.com/mckernant1/project-manager"
  url "https://github.com/mckernant1/project_manager/archive/0.3.5.tar.gz"
  sha256 "e9ed136113b88988cf55b3ad4534447edd7506461925a1a740c2d87de0eaac98"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/project-manager.bash"
    zsh_completion.install "completions/_project-manager"
  end

end
