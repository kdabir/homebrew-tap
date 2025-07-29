class Has < Formula
  desc "checks presence of various command line tools and their versions on the path"
  homepage "https://github.com/kdabir/has"
  url "https://github.com/kdabir/has/archive/v1.5.1.tar.gz"
  sha256 "9693e50673fffcfdfe0eea2b9c3c4455c5c46c4eee390bd3cffb3e51bbfc291b"

  def install
    bin.install "has"
  end

  test do
     system bin/"has", "has"
     #assert_equal %x('#{bin}/has'), "✔ has 1.5.0"
  end
end
