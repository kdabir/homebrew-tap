class Has < Formula
  desc "checks presence of various command line tools and their versions on the path"
  homepage "https://github.com/kdabir/has"
  url "https://github.com/kdabir/has/archive/v1.5.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  def install
    bin.install "has"
  end

  test do
     system bin/"has", "has"
     #assert_equal %x('#{bin}/has'), "✔ has 1.5.0"
  end
end
