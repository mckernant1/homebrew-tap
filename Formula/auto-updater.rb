class AutoUpdater < Formula
  desc "Automatically updates added package managers"
  homepage "https://github.com/mckernant1/auto-updater"
  url "https://github.com/mckernant1/auto-updater/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "daa60f8e504668114832ee8f7121773984a4afa8ebc322e3eccf99f568ae8d05"

  bottle do
    root_url "https://github.com/mckernant1/auto-updater/releases/download/v0.2.7"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "075653768efde64d05e2acd8e3667b3fdb8fb11e174fc0a1a86ec0e431ceecb0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3877b8545c5c7a90dba6ef7764c1e9e3db9c2ec7168eccd46941996ed8320d71"
    sha256 cellar: :any_skip_relocation, sequoia:       "8c44a950857652e02a7f5c02a6fd20ae977d696bca3d75f0267ea23bea1361da"
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
