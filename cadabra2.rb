# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2 < Formula
  desc "A field-theory motivated approach to computer algebra."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/refs/tags/2.3.8.tar.gz"
  sha256 "4bd1b3d72dd94c7a79ee23576e9fbbc115a11addc8e252934ea10208641f6e48"
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
#  depends_on :mactex
  depends_on "sqlite3"
  depends_on "boost"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "python3"
  depends_on "gtkmm3"
  depends_on "glibmm@2.70.0"
  depends_on "atkmm@2.36.1"
  depends_on "cairomm@1.16,.1"
  depends_on "pangomm@2.48.1"
  depends_on "mpfr"
  depends_on "libmpc"
  depends_on "adwaita-icon-theme"

  resource "sympy" do
     url    "https://files.pythonhosted.org/packages/26/86/902ee78db1bab1f0410f799869a49bb03b83be8d44c23b224d9db34f21c3/sympy-1.9.tar.gz"
     sha256 "c7a880e229df96759f955d4f3970d4cabce79f60f5b18830c08b90ce77cd5fdc"
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
