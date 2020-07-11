class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/0.1.7.tar.gz"
  sha256 "d4c6400aea1196df5abc0438513e8a6e9a17865110e0dbb1c3e0dc843ee159dd"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  bottle do
    root_url "https://homebrew.bintray.com/bottles-tools"
    cellar :any_skip_relocation
    sha256 "5390369c0e18f9b33292988be93f47b7b9138162c513edce6d64e902c0321549" => :catalina
  end

  def caveats; <<~EOS
    To get this to run automatically add to your zshrc or bashrc

    auto-updater upgrade

    You can also run manually with

    auto-updater upgrade [-f] [NAME]
  EOS
  end

end
