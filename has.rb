class Has < Formula
  desc "checks presence of various command line tools and their versions on the path"
  homepage "https://github.com/kdabir/has"
  url "https://github.com/kdabir/has/archive/v1.5.0.tar.gz"
  sha256 "d45be15f234556cdbaffa46edae417b214858a4bd427a44a2a94aaa893da7d99"

  def install
    bin.install "has"
  end

  test do
     system bin/"has", "has"
     #assert_equal %x('#{bin}/has'), "✔ has 1.5.0"
  end
end
