# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2 < Formula
  desc "A field-theory motivated approach to computer algebra."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/refs/tags/2.4.4.tar.gz"
  sha256 "91ae9909734c0937249d3ce0862d2430243ef9f24bc5bb8ae936b06a4722206e"
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
#  depends_on :mactex
  depends_on "sqlite3"
  depends_on "boost"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "python3"
  depends_on "gtkmm3"
  depends_on "glibmm"
  depends_on "atkmm"
  depends_on "cairomm"
  depends_on "pangomm"
  depends_on "mpfr"
  depends_on "libmpc"
  depends_on "adwaita-icon-theme"

  resource "sympy" do
    url    "https://files.pythonhosted.org/packages/5a/36/4667b08bc45131fe655a27b1a112c1730f3244343c53a338f44d730bd6ba/sympy-1.11.1.tar.gz"
    sha256 "e32380dce63cb7c0108ed525570092fd45168bdae2faa17e528221ef72e88658"
  end

  resource "gmpy2" do
     url    "https://files.pythonhosted.org/packages/80/02/a9f4de927fc1677a68b40d966f9ea757b58997cfe06cf305ffa2159979ce/gmpy2-2.1.2.tar.gz"
     sha256 "da75140bca128ece795895477e53b43773e3748aa90ba6170eae7ca2c74b82d1"
  end

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
