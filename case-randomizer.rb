class CaseRandomizer < Formula
  desc "A cat clone that randomizes case"
  homepage "https://github.com/mckernant1/case_randomizer"
  url "https://github.com/mckernant1/case_randomizer/archive/0.1.0.tar.gz"
  sha256 "240d210f8214e0197cb04af5f8fd55dabf889eb68453e9f1efdcd0f8009c07ea"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
