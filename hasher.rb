class Hasher < Formula
  desc "SSH automation tool based on Groovy DSL"
  homepage "https://github.com/mckernant1/hasher"
  url "https://github.com/mckernant1/hasher/archive/0.1.tar.gz"
  sha256 "8364361aa04715ef754fb0a9dabaca5f2b69ce7d6c516c34d4aecf5886bb3727"

  depends_on :java => "1.8"

  def install
    system "./gradlew", "shadowJar"
    libexec.install "build/libs/hasher-all.jar"
    bin.write_jar_script libexec/"hasher-all.jar", "hasher", :java_version => "1.8"
  end

end
