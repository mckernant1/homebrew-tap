class Hasher < Formula
  desc "A hash verifier"
  homepage "https://github.com/mckernant1/hasher"
  url "https://github.com/mckernant1/hasher/archive/0.4.tar.gz"
  sha256 "279468bdc607b5eb9903f0f8fda586e13b47232f78af509634c6cd37474314f7"

  depends_on :openjdk@8

  bottle do
    root_url "https://homebrew.bintray.com/bottles-tools"
    cellar :any_skip_relocation
    sha256 "3aca9f1843fbed13c11c2bc5a754c29146b4ef2e68216276a539730c1b0e9a9e" => :catalina
  end

  def install
    system "./gradlew", "shadowJar"
    libexec.install "build/libs/hasher-all.jar"
    bin.write_jar_script libexec/"hasher-all.jar", "hasher", :java_version => "1.8"
  end

end
