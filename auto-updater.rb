class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/0.1.2.tar.gz"
  sha256 "bad4d5b28b2fe69a9795026b587ffeca50a821d691e7622311ba726b94c5c3dd"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  def caveats; <<~EOS
    To get this to run automatically add to your zshrc or bashrc

    auto-updater upgrade

    You can also run manually with

    auto-updater upgrade [-f] [NAME]
  EOS
  end

end
