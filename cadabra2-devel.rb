# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2Devel < Formula
  include Language::Python::Virtualenv
  
  desc "A field-theory motivated approach to computer algebra (current development branch)."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/3984300ec54df8ca3236dc1c52bbe3e00917e295.tar.gz"
  sha256 "11303f4abe87f02d29df3cd359f657bcae57e5bef867886cd70735d844fa5b7a"
  conflicts_with "cadabra2", because: "You can only install the normal or the devel version, not both."
  version "2.5.11.3984300ec54df8ca3236dc1c52bbe3e00917e295"
  
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "ninja" => :build
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

  # Dependencies with no sub-dependencies should go first
  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end
  
  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end
  
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end
  
  resource "pillow" do
    url "https://files.pythonhosted.org/packages/a5/26/0d95c04c868f6bdb0c447e3ee2de5564411845e36a858cfd63766bc7b563/pillow-11.0.0.tar.gz"
    sha256 "72bacbaf24ac003fea9bff9837d1eedb6088758d41e100c1552930151f677739"
  end
  
  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/76/61/a300d1574dc381393424047c0396a0e213db212e28361123af9830d71a8d/fonttools-4.55.3.tar.gz"
    sha256 "3983313c2a04d6cc1fe9251f8fc647754cf49a61dac6cb1e7249ae67afaafc45"
  end
  
  resource "contourpy" do
    url "https://files.pythonhosted.org/packages/25/c2/fc7193cc5383637ff390a712e88e4ded0452c9fbcf84abe3de5ea3df1866/contourpy-1.3.1.tar.gz"
    sha256 "dfd97abd83335045a913e3bcc4a09c0ceadbe66580cf573fe961f4a825efa699"
  end
  
  resource "kiwisolver" do
    url "https://files.pythonhosted.org/packages/85/4d/2255e1c76304cbd60b48cee302b66d1dde4468dc5b1160e4b7cb43778f2a/kiwisolver-1.4.7.tar.gz"
    sha256 "9893ff81bd7107f7b685d3017cc6583daadb4fc26e4a888350df530e41980a60"
  end
  
  resource "numpy" do
    url    "https://files.pythonhosted.org/packages/f2/a5/fdbf6a7871703df6160b5cf3dd774074b086d278172285c52c2758b76305/numpy-2.2.1.tar.gz"
    sha256 "45681fd7128c8ad1c379f0ca0776a8b0c6583d2f69889ddac01559dfe4390918"
  end
  
  resource "pyparsing" do
    url    "https://files.pythonhosted.org/packages/8c/d5/e5aeee5387091148a19e1145f63606619cb5f20b83fccb63efae6474e7b2/pyparsing-3.2.0.tar.gz"
    sha256 "cbf74e27246d595d9a74b186b810f6fbb86726dbf3b9532efb343f6d7294fe9c"
  end

  resource "cycler" do
    url    "https://files.pythonhosted.org/packages/a9/95/a3dbbb5028f35eafb79008e7522a75244477d2838f38cbb722248dabc2a8/cycler-0.12.1.tar.gz"
    sha256 "88bb128f02ba341da8ef447245a9e138fae777f6a23943da4540077d3601eb1c"
  end

  resource "matplotlib" do
    url    "https://files.pythonhosted.org/packages/68/dd/fa2e1a45fce2d09f4aea3cee169760e672c8262325aa5796c49d543dc7e6/matplotlib-3.10.0.tar.gz"
    sha256 "b886d02a581b96704c9d1ffe55709e49b4d2d52709ccebc4be42db856e511278"
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

    # Matplotlib an dependencies.
    venv.pip_install resource("six")
    venv.pip_install resource("packaging")
    venv.pip_install resource("python-dateutil")
    venv.pip_install resource("pillow")
    venv.pip_install resource("fonttools")
    venv.pip_install resource("contourpy")
    venv.pip_install resource("kiwisolver")
    venv.pip_install resource("numpy")
    venv.pip_install resource("pyparsing")
    venv.pip_install resource("cycler")
    venv.pip_install resource("matplotlib")

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
