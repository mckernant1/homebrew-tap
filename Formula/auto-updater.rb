class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "3b9a877b387760b481aaf8ce1b2478c3bc812d5b03f462fe30c951830df7c87f"

  bottle do
    root_url "https://github.com/mckernant1/auto-updater/releases/download/v0.2.6"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "8ef9a0793de83ac7592d66330119cfac06f2ed961787439a4d2adc161a5d2e39"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "69c58441104a7dbe3fe4e4786f074ab72ae49c60b7866f5ffe3bf5400d2d94d9"
    sha256 cellar: :any_skip_relocation, sequoia:       "f8c05c97203e5af06384332b8dd626a19c166f9e1189b97bc6327ffea54dad37"
  end

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
