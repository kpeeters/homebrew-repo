# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2 < Formula
  desc "A field-theory motivated approach to computer algebra."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/releases/download/2.3.0/cadabra2-2.3.0.tar.gz"
  sha256 "144b4123e0e1f89592dc5e51e30c0e3ecf819a3288f5e1c88bddc7474e9f8a56"
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

  resource "sympy" do
     url    "https://files.pythonhosted.org/packages/23/03/942707321b066654102fae3c640eda8b9e238c05b7f3b8d0557f287ab42e/sympy-1.6.tar.gz"
     sha256 "9769e3d2952e211b1245f1d0dfdbfbdde1f7779a3953832b7dd2b88a21ca6cc6"
  end

  resource "gmpy2" do
     url    "https://files.pythonhosted.org/packages/90/f4/9a2e384b325b69bc5827b9a6510a8fb4a51698c915c06a3f25a86458892a/gmpy2-2.0.8.zip"
     sha256 "dd233e3288b90f21b0bb384bcc7a7e73557bb112ccf0032ad52aa614eb373d3f"
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
