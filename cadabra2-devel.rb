# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2Devel < Formula
  include Language::Python::Virtualenv
  
  desc "A field-theory motivated approach to computer algebra (current development branch)."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/baa6aa26ec037722c4b2a5fb9732f23a7e80af38.tar.gz"
  sha256 "9f165170b7e4dbcd347333835c45c2a091eff23024ae6e7c3f833cfae7ad9844"
  conflicts_with "cadabra2", because: "You can only install the normal or the devel version, not both."
  version "2.5.15.baa6aa26ec037722c4b2a5fb9732f23a7e80af38"
  
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "ninja" => :build
  depends_on "sqlite3"
  depends_on "boost"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "python@3.13"
  depends_on "gtkmm3"
  depends_on "glibmm"
  depends_on "atkmm"
  depends_on "cairomm"
  depends_on "pangomm"
  depends_on "mpfr"
  depends_on "libmpc"
  depends_on "adwaita-icon-theme"
  depends_on "zeromq"

  # Get these resource urls and sha256 from https://pypi.org.
  
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


  # Resources for the Jupyter kernel.
  
  # Fetching info for asttokens 3.0.0...
  resource "asttokens" do
    url "https://files.pythonhosted.org/packages/4a/e7/82da0a03e7ba5141f05cce0d302e6eed121ae055e0456ca228bf693984bc/asttokens-3.0.0.tar.gz"
    sha256 "0dcd8baa8d62b0c1d118b399b2ddba3c4aff271d0d7a9e0d4c1681c79035bbc7"
  end
  
  # Fetching info for comm 0.2.2...
  resource "comm" do
    url "https://files.pythonhosted.org/packages/e9/a8/fb783cb0abe2b5fded9f55e5703015cdf1c9c85b3669087c538dd15a6a86/comm-0.2.2.tar.gz"
    sha256 "3fd7a84065306e07bea1773df6eb8282de51ba82f77c72f9c85716ab11fe980e"
  end
  
  # Fetching info for debugpy 1.8.14...
  resource "debugpy" do
    url "https://files.pythonhosted.org/packages/bd/75/087fe07d40f490a78782ff3b0a30e3968936854105487decdb33446d4b0e/debugpy-1.8.14.tar.gz"
    sha256 "7cd287184318416850aa8b60ac90105837bb1e59531898c07569d197d2ed5322"
  end
  
  # Fetching info for decorator 5.2.1...
  resource "decorator" do
    url "https://files.pythonhosted.org/packages/43/fa/6d96a0978d19e17b68d634497769987b16c8f4cd0a7a05048bec693caa6b/decorator-5.2.1.tar.gz"
    sha256 "65f266143752f734b0a7cc83c46f4618af75b8c5911b00ccb61d0ac9b6da0360"
  end
  
  # Fetching info for executing 2.2.0...
  resource "executing" do
    url "https://files.pythonhosted.org/packages/91/50/a9d80c47ff289c611ff12e63f7c5d13942c65d68125160cefd768c73e6e4/executing-2.2.0.tar.gz"
    sha256 "5d108c028108fe2551d1a7b2e8b713341e2cb4fc0aa7dcf966fa4327a5226755"
  end
  
  # Fetching info for ipykernel 6.29.5...
  resource "ipykernel" do
    url "https://files.pythonhosted.org/packages/e9/5c/67594cb0c7055dc50814b21731c22a601101ea3b1b50a9a1b090e11f5d0f/ipykernel-6.29.5.tar.gz"
    sha256 "f093a22c4a40f8828f8e330a9c297cb93dcab13bd9678ded6de8e5cf81c56215"
  end
  
  # Fetching info for ipython 9.3.0...
  resource "ipython" do
    url "https://files.pythonhosted.org/packages/dc/09/4c7e06b96fbd203e06567b60fb41b06db606b6a82db6db7b2c85bb72a15c/ipython-9.3.0.tar.gz"
    sha256 "79eb896f9f23f50ad16c3bc205f686f6e030ad246cc309c6279a242b14afe9d8"
  end
  
  # Fetching info for ipython_pygments_lexers 1.1.1...
  resource "ipython_pygments_lexers" do
    url "https://files.pythonhosted.org/packages/ef/4c/5dd1d8af08107f88c7f741ead7a40854b8ac24ddf9ae850afbcf698aa552/ipython_pygments_lexers-1.1.1.tar.gz"
    sha256 "09c0138009e56b6854f9535736f4171d855c8c08a563a0dcd8022f78355c7e81"
  end
  
  # Fetching info for jedi 0.19.2...
  resource "jedi" do
    url "https://files.pythonhosted.org/packages/72/3a/79a912fbd4d8dd6fbb02bf69afd3bb72cf0c729bb3063c6f4498603db17a/jedi-0.19.2.tar.gz"
    sha256 "4770dc3de41bde3966b02eb84fbcf557fb33cce26ad23da12c742fb50ecb11f0"
  end
  
  # Fetching info for jupyter_client 8.6.3...
  resource "jupyter_client" do
    url "https://files.pythonhosted.org/packages/71/22/bf9f12fdaeae18019a468b68952a60fe6dbab5d67cd2a103cac7659b41ca/jupyter_client-8.6.3.tar.gz"
    sha256 "35b3a0947c4a6e9d589eb97d7d4cd5e90f910ee73101611f01283732bd6d9419"
  end
  
  # Fetching info for jupyter_core 5.8.1...
  resource "jupyter_core" do
    url "https://files.pythonhosted.org/packages/99/1b/72906d554acfeb588332eaaa6f61577705e9ec752ddb486f302dafa292d9/jupyter_core-5.8.1.tar.gz"
    sha256 "0a5f9706f70e64786b75acba995988915ebd4601c8a52e534a40b51c95f59941"
  end
  
  # Fetching info for matplotlib-inline 0.1.7...
  resource "matplotlib-inline" do
    url "https://files.pythonhosted.org/packages/99/5b/a36a337438a14116b16480db471ad061c36c3694df7c2084a0da7ba538b7/matplotlib_inline-0.1.7.tar.gz"
    sha256 "8423b23ec666be3d16e16b60bdd8ac4e86e840ebd1dd11a30b9f117f2fa0ab90"
  end
  
  # Fetching info for nest-asyncio 1.6.0...
  resource "nest-asyncio" do
    url "https://files.pythonhosted.org/packages/83/f8/51569ac65d696c8ecbee95938f89d4abf00f47d58d48f6fbabfe8f0baefe/nest_asyncio-1.6.0.tar.gz"
    sha256 "6f172d5449aca15afd6c646851f4e31e02c598d553a667e38cafa997cfec55fe"
  end
  
  # Fetching info for parso 0.8.4...
  resource "parso" do
    url "https://files.pythonhosted.org/packages/66/94/68e2e17afaa9169cf6412ab0f28623903be73d1b32e208d9e8e541bb086d/parso-0.8.4.tar.gz"
    sha256 "eb3a7b58240fb99099a345571deecc0f9540ea5f4dd2fe14c2a99d6b281ab92d"
  end
  
  # Fetching info for pexpect 4.9.0...
  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/42/92/cc564bf6381ff43ce1f4d06852fc19a2f11d180f23dc32d9588bee2f149d/pexpect-4.9.0.tar.gz"
    sha256 "ee7d41123f3c9911050ea2c2dac107568dc43b2d3b0c7557a33212c398ead30f"
  end
  
  # Fetching info for platformdirs 4.3.8...
  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/fe/8b/3c73abc9c759ecd3f1f7ceff6685840859e8070c4d947c93fae71f6a0bf2/platformdirs-4.3.8.tar.gz"
    sha256 "3d512d96e16bcb959a814c9f348431070822a6496326a4be0911c40b5a74c2bc"
  end
  
  # Fetching info for prompt_toolkit 3.0.51...
  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/bb/6e/9d084c929dfe9e3bfe0c6a47e31f78a25c54627d64a66e884a8bf5474f1c/prompt_toolkit-3.0.51.tar.gz"
    sha256 "931a162e3b27fc90c86f1b48bb1fb2c528c2761475e57c9c06de13311c7b54ed"
  end
  
  # Fetching info for psutil 7.0.0...
  resource "psutil" do
    url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
    sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
  end
  
  # Fetching info for ptyprocess 0.7.0...
  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/20/e5/16ff212c1e452235a90aeb09066144d0c5a6a8c0834397e03f5224495c4e/ptyprocess-0.7.0.tar.gz"
    sha256 "5c5d0a3b48ceee0b48485e0c26037c0acd7d29765ca3fbb5cb3831d347423220"
  end
  
  # Fetching info for pure_eval 0.2.3...
  resource "pure_eval" do
    url "https://files.pythonhosted.org/packages/cd/05/0a34433a064256a578f1783a10da6df098ceaa4a57bbeaa96a6c0352786b/pure_eval-0.2.3.tar.gz"
    sha256 "5f4e983f40564c576c7c8635ae88db5956bb2229d7e9237d03b3c0b0190eaf42"
  end
  
  # Fetching info for Pygments 2.19.1...
  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end
  
  # Fetching info for pyzmq 26.4.0...
  resource "pyzmq" do
    url "https://files.pythonhosted.org/packages/b1/11/b9213d25230ac18a71b39b3723494e57adebe36e066397b961657b3b41c1/pyzmq-26.4.0.tar.gz"
    sha256 "4bd13f85f80962f91a651a7356fe0472791a5f7a92f227822b5acf44795c626d"
  end
  
  # Fetching info for stack-data 0.6.3...
  resource "stack-data" do
    url "https://files.pythonhosted.org/packages/28/e3/55dcc2cfbc3ca9c29519eb6884dd1415ecb53b0e934862d3559ddcb7e20b/stack_data-0.6.3.tar.gz"
    sha256 "836a778de4fec4dcd1dcd89ed8abff8a221f58308462e1c4aa2a3cf30148f0b9"
  end
  
  # Fetching info for tornado 6.5.1...
  resource "tornado" do
    url "https://files.pythonhosted.org/packages/51/89/c72771c81d25d53fe33e3dca61c233b665b2780f21820ba6fd2c6793c12b/tornado-6.5.1.tar.gz"
    sha256 "84ceece391e8eb9b2b95578db65e920d2a61070260594819589609ba9bc6308c"
  end
  
  # Fetching info for traitlets 5.14.3...
  resource "traitlets" do
    url "https://files.pythonhosted.org/packages/eb/79/72064e6a701c2183016abbbfedaba506d81e30e232a68c9f0d6f6fcd1574/traitlets-5.14.3.tar.gz"
    sha256 "9ed0579d3502c94b4b3732ac120375cda96f923114522847de4b3bb98b96b6b7"
  end
  
  # Fetching info for wcwidth 0.2.13...
  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  
  def install
    # Configure cadabra.
    venv = virtualenv_create(libexec, Formula["python@3.13"].opt_bin/"python3.13")

    system "cmake", "-DPython_EXECUTABLE="+venv.root/"bin/python3.13", "-DPython_CDB_EXECUTABLE="+venv.root/"bin/python3.13", "-DPYTHON_SITE_PATH="+venv.root+"/"+Language::Python.site_packages("python3.13"), "-DHOMEBREW_ALLOW_FETCHCONTENT=ON", "-DENABLE_MATHEMATICA=OFF", ".", *std_cmake_args

    # Install the python dependencies using pip into a virtual env
    # created just for cadabra.
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

    # All below is to get the jupyter kernel to work. This should
    # probably move into a separate package.

    venv.pip_install resource("pyzmq")
    venv.pip_install resource("asttokens")
    venv.pip_install resource("comm")
    venv.pip_install resource("debugpy")
    venv.pip_install resource("decorator")
    venv.pip_install resource("executing")
    venv.pip_install resource("ipykernel")
    venv.pip_install resource("ipython")
    venv.pip_install resource("ipython_pygments_lexers")
    venv.pip_install resource("jedi")
    venv.pip_install resource("jupyter_client")
    venv.pip_install resource("jupyter_core")
    venv.pip_install resource("matplotlib-inline")
    venv.pip_install resource("nest-asyncio")
    venv.pip_install resource("parso")
    venv.pip_install resource("pexpect")
    venv.pip_install resource("platformdirs")
    venv.pip_install resource("prompt_toolkit")
    venv.pip_install resource("psutil")
    venv.pip_install resource("ptyprocess")
    venv.pip_install resource("pure_eval")
    venv.pip_install resource("Pygments")
    venv.pip_install resource("stack-data")
    venv.pip_install resource("tornado")
    venv.pip_install resource("traitlets")
    venv.pip_install resource("wcwidth")
    
    # We need to put the directory in which we just installed sympy
    # and matplotlib into the python site.path seen by cadabra. The
    # following magic achieves that...
    site_packages = Language::Python.site_packages("python3.13")
    cdb = Formula["cadabra2-devel"].libexec
    (prefix/site_packages/"homebrew-cadabra2-devel.pth").write cdb/site_packages
    # Now build and install cadabra itself.
    system "make", "install" 

  end

  def caveats
    <<~EOS


      To make the Cadabra2 kernel available to Jupyter, run:
        jupyter kernelspec install #{prefix}/share/jupyter/kernels/cadabra2 --user --name cadabra2


    EOS
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
