class Has < Formula
  desc "checks presence of various command line tools and their versions on the path"
  homepage "https://github.com/kdabir/has"
  url "https://github.com/kdabir/has/archive/v1.4.0.tar.gz"
  sha256 "0e73552dbf59e3da0d9254da87c94599595c9ea07c69a62a4853e69bbf3f0d7d"

  def install
    bin.install "has"
  end

  test do
     system bin/"has", "has"
     # assert_equal %x('#{bin}/has'), "✔ has 1.4.0"
  end
end
