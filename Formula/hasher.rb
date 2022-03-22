class Hasher < Formula
  desc "A hash verifier"
  homepage "https://github.com/mckernant1/hasher"
  url "https://github.com/mckernant1/hasher/archive/0.4.tar.gz"
  sha256 "279468bdc607b5eb9903f0f8fda586e13b47232f78af509634c6cd37474314f7"

  depends_on "openjdk@8"

  def install
    system "./gradlew", "shadowJar"
    libexec.install "build/libs/hasher-all.jar"
    bin.write_jar_script libexec/"hasher-all.jar", "hasher", :java_version => "1.8"
  end

end
