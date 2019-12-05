class Hasher < Formula
  desc "A hash verifier"
  homepage "https://github.com/mckernant1/hasher"
  url "https://github.com/mckernant1/hasher/archive/0.1.tar.gz"
  sha256 "1b24a3af5ea0a3b089df260485ae7d807c3d9aac16e52d9b820f8d7771b7cf1c"

  depends_on :java => "1.8"

  def install
    system "./gradlew", "shadowJar"
    libexec.install "build/libs/hasher-all.jar"
    bin.write_jar_script libexec/"hasher-all.jar", "hasher", :java_version => "1.8"
  end

end
