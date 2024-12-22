# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2Devel < Formula
  include Language::Python::Virtualenv
  
  desc "A field-theory motivated approach to computer algebra (current development branch)."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/9e7cf52846c3140e8e305d2bd7012b64baed3fb2.tar.gz"
  sha256 "bd2c97e46b010c2ebcbba6c757cce3eefec536d65922529fc33b36f850142196"
  conflicts_with "cadabra2", because: "You can only install the normal or the devel version, not both."
  version "2.5.10-rc3.9e7cf52846c3140e8e305d2bd7012b64baed3fb2"
  
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
  depends_on "python-matplotlib"
  
  resource "mpmath" do
    url    "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end
  
  resource "sympy" do
    url    "https://files.pythonhosted.org/packages/11/8a/5a7fd6284fa8caac23a26c9ddf9c30485a48169344b4bd3b0f02fef1890f/sympy-1.13.3.tar.gz"
    sha256 "b27fd2c6530e0ab39e275fc9b683895367e51d5da91baa8d3d64db2565fec4d9"
  end

  resource "gmpy2" do
    url "https://files.pythonhosted.org/packages/d9/2e/2848cb5ab5240cb34b967602990450d0fd715f013806929b2f82821cef7f/gmpy2-2.1.5.tar.gz"
    sha256 "bc297f1fd8c377ae67a4f493fc0f926e5d1b157e5c342e30a4d84dc7b9f95d96"
    
    # upstream bug report, https://github.com/aleaxit/gmpy/issues/446
    patch do
      url "https://raw.githubusercontent.com/Homebrew/formula-patches/d77631527c866bbd168f7add6814e3388033cf2f/badkeys/gmpy2-2.1.5-py3.12.patch"
      sha256 "6b0994285919e373d2e91b3e0662c7775f03a194a116b5170fdc41837dd3551e"
    end
  end
  
  def install
    # Configure cadabra.
    system "cmake", "-DPython_EXECUTABLE="+Formula["python@3.12"].opt_bin/"python3.12", "-DPYTHON_SITE_PATH="+prefix+"/"+Language::Python.site_packages("python3.12"), "-DHOMEBREW_ALLOW_FETCHCONTENT=ON", "-DENABLE_MATHEMATICA=OFF", ".", *std_cmake_args
    # Install the python dependencies using pip into a virtual env
    # created just for cadabra.
    venv = virtualenv_create(libexec, Formula["python@3.12"].opt_bin/"python3.12")
    venv.pip_install resource("mpmath")
    venv.pip_install resource("sympy")
    venv.pip_install resource("gmpy2")
    # We need to put the directory in which we just installed sympy
    # and matplotlib into the python site.path seen by cadabra. The
    # following magic achieves that...
    site_packages = Language::Python.site_packages("python3.12")
    cdb = Formula["cadabra2-devel"].libexec
    (prefix/site_packages/"homebrew-cadabra2-devel.pth").write cdb/site_packages
    # Now build and install cadabra itself.
    system "make", "install" 
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
