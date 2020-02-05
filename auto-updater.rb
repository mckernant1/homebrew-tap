class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/0.1.0.tar.gz"
  sha256 "60cfa0bb425d48d70f15801fa2686701509a239c7396ca44d336317e796fc261"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
