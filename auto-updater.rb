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

  def caveats; <<~EOS
    To get this to run automatically add to your zshrc or bashrc

    auto-updater upgrade

    You can also run manually with

    auto-updater upgrade [-f] [NAME]
  EOS
  end

end
