class Has < Formula
  desc "checks presence of various command line tools and their versions on the path"
  homepage "https://github.com/kdabir/has"
  url "https://github.com/kdabir/has/archive/v1.5.2.tar.gz"
  sha256 "965629d00b9c41fab2a9c37b551e3d860df986d86cdebd9b845178db8f1c998e"

  def install
    bin.install "has"
  end

  test do
     system bin/"has", "has"
     #assert_equal %x('#{bin}/has'), "✔ has 1.5.0"
  end
end
