class Swain < Formula
  desc ""
  homepage "https://github.com/mckernant1/swain"
  url "https://github.com/mckernant1/swain/archive/0.0.1.tar.gz"
  sha256 "08013e379dab9eec5f6f1fb7e3affa3f03f8bc643bc1853c590052ad33d519f6"

  depends_on "openjdk@8"

  def install
    system "./gradlew", "shadowJar"
    libexec.install "build/libs/swain-1.0-SNAPSHOT-all.jar"
    bin.write_jar_script libexec/"swain-1.0-SNAPSHOT-all.jar", "swain", :java_version => "1.8"
  end

end
