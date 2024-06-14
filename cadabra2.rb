# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2 < Formula
  include Language::Python::Virtualenv
  
  desc "A field-theory motivated approach to computer algebra."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/refs/tags/2.5.2.tar.gz"
  sha256 "5685fb5e9f1fac31b636a75d4cb86d2bd0d67e50f8a5ff453760a4f4f72a8026"
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "sqlite3"
  depends_on "boost"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "python@3.12"
  depends_on "gtkmm3"
  depends_on "glibmm"
  depends_on "atkmm"
  depends_on "cairomm"
  depends_on "pangomm"
  depends_on "mpfr"
  depends_on "libmpc"
  depends_on "adwaita-icon-theme"

  resource "sympy" do
    url    "https://files.pythonhosted.org/packages/41/8a/0d1bbd33cd3091c913d298746e56f40586fa954788f51b816c6336424675/sympy-1.12.1.tar.gz"
    sha256 "2877b03f998cd8c08f07cd0de5b767119cd3ef40d09f41c30d722f6686b0fb88"
  end

  resource "gmpy2" do
     url    "https://files.pythonhosted.org/packages/d9/2e/2848cb5ab5240cb34b967602990450d0fd715f013806929b2f82821cef7f/gmpy2-2.1.5.tar.gz"
     sha256 "bc297f1fd8c377ae67a4f493fc0f926e5d1b157e5c342e30a4d84dc7b9f95d96"
  end

  def install
    system "cmake", "-DPYTHON_SITE_PATH="+prefix+"/"+Language::Python.site_packages("python3.12"), "-DENABLE_MATHEMATICA=OFF", ".", *std_cmake_args
    virtualenv_install_with_resources
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
