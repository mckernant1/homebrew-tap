class Hasher < Formula
  desc "A hash verifier"
  homepage "https://github.com/mckernant1/hasher"
  url "https://github.com/mckernant1/hasher/archive/0.3.tar.gz"
  sha256 "28860bcad9419bb0e4c7f9e0a33cecac2d9bee0d94607826597b8c59be088487"

  depends_on :java => "1.8"

  def install
    system "./gradlew", "shadowJar"
    libexec.install "build/libs/hasher-all.jar"
    bin.write_jar_script libexec/"hasher-all.jar", "hasher", :java_version => "1.8"
  end

end
