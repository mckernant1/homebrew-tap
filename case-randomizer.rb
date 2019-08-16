class CaseRandomizer < Formula
  desc "A cat clone that randomizes case"
  homepage "https://github.com/mckernant1/case_randomizer"
  url "https://github.com/mckernant1/case_randomizer/archive/0.1.1.tar.gz"
  sha256 "2911af597d90b40670286f938e673dc4acd49a733db9e1b62ef5274a5a12849f"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

end
