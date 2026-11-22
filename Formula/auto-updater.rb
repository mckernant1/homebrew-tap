class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "f828ce7673477e90e20588d94bb91d5eb6781c4a6aaf75c5f27e492ba749df65"

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
