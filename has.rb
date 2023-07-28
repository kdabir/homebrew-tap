class Has < Formula
  desc "checks presence of various command line tools and their versions on the path"
  homepage "https://github.com/kdabir/has"
  url "https://github.com/kdabir/has/archive/v1.5.0.tar.gz"
  sha256 "da39a3ee5e6b4b0d3255bfef95601890afd80709"

  def install
    bin.install "has"
  end

  test do
     system bin/"has", "has"
     #assert_equal %x('#{bin}/has'), "✔ has 1.5.0"
  end
end
