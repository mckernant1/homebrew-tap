class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/0.1.6.tar.gz"
  sha256 "3d84f53a9b2cdce1b7d03f543ea277b0807b65d99cb597840791a131d3a508dc"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  def caveats; <<~EOS
    To get this to run automatically add to your zshrc or bashrc

    auto-updater upgrade

    You can also run manually with

    auto-updater upgrade [-f] [NAME]
  EOS
  end

end
