class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "3b9a877b387760b481aaf8ce1b2478c3bc812d5b03f462fe30c951830df7c87f"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bash_completion.install "completions/auto-updater.bash"
    zsh_completion.install "completions/_auto-updater"
  end

  def caveats; <<~EOS
    To get this to run automatically add to your zshrc or bashrc

    auto-updater upgrade

    You can also run manually with

    auto-updater upgrade [-f] [NAME]
  EOS
  end

end
