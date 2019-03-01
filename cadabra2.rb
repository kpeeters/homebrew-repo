# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2 < Formula
  desc "A field-theory motivated approach to computer algebra."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/2.2.5.tar.gz"
  sha256 "4e96d413b71736a304f2b6b035e118d72017b5c6ecc019914e47f174055095c1"
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
#  depends_on :mactex
  depends_on "sqlite3"
  depends_on "boost"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "python3"
  depends_on "gtkmm3"
  depends_on "mpfr"
  depends_on "libmpc"
  depends_on "adwaita-icon-theme"

  def install
    system "cmake", "-DENABLE_MATHEMATICA=OFF", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cadabra2`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
