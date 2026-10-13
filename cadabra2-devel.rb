# Formula for the Cadabra computer algebra system.
# https://cadabra.science/

class Cadabra2Devel < Formula
  include Language::Python::Virtualenv
  
  desc "A field-theory motivated approach to computer algebra (current development branch)."
  homepage "https://cadabra.science/"
  url "https://github.com/kpeeters/cadabra2/archive/ec4400a2b6554cef1efdcaf5426bbdf7951540d4.tar.gz"
  sha256 "9c0c1763a6f101fdfef8aa7106e6bcedbccd2ded0a6ae5e7ad883e3241e7cc31"
  conflicts_with "cadabra2", because: "You can only install the normal or the devel version, not both."
  version "2.5.15.ec4400a2b6554cef1efdcaf5426bbdf7951540d4"
  
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build
  depends_on "ninja" => :build
  depends_on "sqlite3"
  depends_on "boost"
  depends_on "pcre"
  depends_on "gmp"
  depends_on "python@3.13"
  depends_on "gtkmm4"
  depends_on "glibmm"
  depends_on "cairomm"
  depends_on "pangomm"
  depends_on "mpfr"
  depends_on "libmpc"
  depends_on "adwaita-icon-theme"
  depends_on "zeromq"

  # Get these resource urls and sha256 from https://pypi.org.
  # sympy 1.14 requires mpmath < 1.4, so mpmath stays at 1.3.0.

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/83/d3/803453b36afefb7c2bb238361cd4ae6125a569b4db67cd9e79846ba2d68c/sympy-1.14.0.tar.gz"
    sha256 "d3d3fe8df1e5a0b42f0e7bdf50541697dbe7d23746e894990c030e2b05e72517"
  end

  resource "gmpy2" do
    url "https://files.pythonhosted.org/packages/0b/3d/1c648af871024438207d5a017fb3f0ebc6da6b59bb9ff6f5047464a3192d/gmpy2-2.3.2.tar.gz"
    sha256 "f20b7e2f8fd16f8d6846bb5b73359c3cc5aa41ec5cf266321d362f547c8fd097"
  end

  # Matplotlib and dependencies.

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/1c/3d/bb7fca845737cf9d7dbde16ed1843984665ff2e0a518f5db43e77ec540b9/pillow-12.3.0.tar.gz"
    sha256 "3b8182a766685eaa002637e28b4ec8d6b18819a0c71f579bf0dbaa5830297cce"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/87/b6/126c659ab7e0e03e01a5f5d223abf7b2c0691ae92718085a212a3924a2a3/fonttools-4.66.1.tar.gz"
    sha256 "64967c6ddb0d4c610dfd8cb1485981b2d27972ddfb7d4bbbd9e199d2a089c450"
  end

  resource "contourpy" do
    url "https://files.pythonhosted.org/packages/83/5a/a55177dd22553a277388e8a1b3220e92de91bacb28356cdc73caa240121d/contourpy-1.4.0.tar.gz"
    sha256 "20156f5a1ac4f8ce02656e39a61e82164a3d359796dc8026f75b062783d500e1"
  end

  resource "kiwisolver" do
    url "https://files.pythonhosted.org/packages/ba/07/bd78e6a8fae171ea041ef5bba3ed21a003522fa088834b069b1909981f30/kiwisolver-1.5.1.tar.gz"
    sha256 "f1303ef2eec81262a4b708c3e858afe58d7c75ad91c1c05266eda7673369859a"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/95/b0/c7453d0b6e2073c3264468b106ee1563750cecc910965e67357e3698c83e/numpy-2.5.4.tar.gz"
    sha256 "9a94cf751c9ad8ebaa835bcd3d40dacf8534ad086b88c38029b65123c7999d2a"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/e4/11/b213bebff182584360cb8d17c72c1677fec5c5c228de439e63bcf8ab1c8f/pyparsing-3.3.3.tar.gz"
    sha256 "928ae7e20211f3b6f3915a72f06a0cfd29ab9d24279dd6346b6b1a7146397d36"
  end

  resource "cycler" do
    url "https://files.pythonhosted.org/packages/a9/95/a3dbbb5028f35eafb79008e7522a75244477d2838f38cbb722248dabc2a8/cycler-0.12.1.tar.gz"
    sha256 "88bb128f02ba341da8ef447245a9e138fae777f6a23943da4540077d3601eb1c"
  end

  resource "matplotlib" do
    url "https://files.pythonhosted.org/packages/e7/c8/9aa712a0afb882649424dd8de8ad9aa6235e796e84c6052e8f6dc1598d0d/matplotlib-3.11.2.tar.gz"
    sha256 "cec596316640f2b394b8f0daa0ea61a8eae82d017b620b9f202befb972a59ea4"
  end


  # Resources for the Jupyter kernel.

  resource "pyzmq" do
    url "https://files.pythonhosted.org/packages/e7/8d/5b3d5631c2f4b4b8862f64cd0c9eb777b5710eeb5125b4be8dd0a200a4c0/pyzmq-27.2.0.tar.gz"
    sha256 "54d4259d1bfae24ecdb5ca79f7acc2eac6c286a02d6a0ae617797cb45f0726d3"
  end

  resource "appnope" do
    url "https://files.pythonhosted.org/packages/11/f7/a82489c2b6ebe32d3e2831895ae19c77861f0eadf3bb16034484d965dbb2/appnope-1.0.0.tar.gz"
    sha256 "685db59cb6043c3c2e528adc0b3bce3a5f8d09bcf7492c6ea650d1b7421f3c49"
  end

  resource "asttokens" do
    url "https://files.pythonhosted.org/packages/25/1e/faf0f247f6f881b98fc4d6d07e14085cb89d13665084e6d6ac1dc2c03d0b/asttokens-3.0.2.tar.gz"
    sha256 "3ecdbd8f2cc195f53ccada3a613538bb5f9ef6f6869129f13e03c30a677b8fe2"
  end

  resource "comm" do
    url "https://files.pythonhosted.org/packages/4c/13/7d740c5849255756bc17888787313b61fd38a0a8304fc4f073dfc46122aa/comm-0.2.3.tar.gz"
    sha256 "2dc8048c10962d55d7ad693be1e7045d891b7ce8d999c97963a5e3e99c055971"
  end

  resource "debugpy" do
    url "https://files.pythonhosted.org/packages/44/9d/3cb6693342acf96802dba89934a5b8da43c201d764ebd1f2c0514a3d42bd/debugpy-1.8.22.tar.gz"
    sha256 "e489c7268e1c7b41e13b438d9c533d2a7af73fb59bf8cd30fead8286c1c39c4e"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/60/8b/32f9823da46cde7df2087faa08cd98d01b908f8dcab982cdba9c84e85355/decorator-5.3.1.tar.gz"
    sha256 "4cbcdd55a6efadb9dbea26b858f4fb3264567b52d69ca0d25b721b553f60ea82"
  end

  resource "executing" do
    url "https://files.pythonhosted.org/packages/52/92/8a611141e42930c0f194f7504063ab87dfe970cf1a5af28e7703df448734/executing-2.3.0.tar.gz"
    sha256 "15919cb5d667e5cb4e099511971d00d659573fff2dd5c4e6cd8b71636c7858d2"
  end

  resource "ipykernel" do
    url "https://files.pythonhosted.org/packages/7a/05/e5499c8b762387d83926bf0389e8fff888c9bf6e7af30566a8527bc12f4a/ipykernel-7.4.0.tar.gz"
    sha256 "4330114d22b9b33575b2c7c68753fc8faabbbcfbc60b0cdff9f14dd4ce63742f"
  end

  resource "ipython" do
    url "https://files.pythonhosted.org/packages/b9/32/99451b1283ec5d92ad77073f12e1c667dc10775384d8f15c2914207149dd/ipython-9.17.1.tar.gz"
    sha256 "8919be8c27f20a6f4423145028063f6637b42a03ce57665bb12015ee1f073529"
  end

  resource "ipython_pygments_lexers" do
    url "https://files.pythonhosted.org/packages/ef/4c/5dd1d8af08107f88c7f741ead7a40854b8ac24ddf9ae850afbcf698aa552/ipython_pygments_lexers-1.1.1.tar.gz"
    sha256 "09c0138009e56b6854f9535736f4171d855c8c08a563a0dcd8022f78355c7e81"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/a3/a4/4692ecd7fa700ac1066b1c1f6cadef60aa2e01e5e364710235137d823e0a/jedi-0.20.1.tar.gz"
    sha256 "2f71208c3f9c1bca057c0e90d3f272aba44ace88fc4067d7587e9e069331b7e5"
  end

  resource "jupyter_client" do
    url "https://files.pythonhosted.org/packages/c5/2a/906772148a06e48885039e0250c340b770a55bbf37b08d6ee0449df369c3/jupyter_client-8.10.0.tar.gz"
    sha256 "9f7116294dca55f1785be880057d44544db9b1567718d92cb33c58886afb9497"
  end

  resource "jupyter_core" do
    url "https://files.pythonhosted.org/packages/02/49/9d1284d0dc65e2c757b74c6687b6d319b02f822ad039e5c512df9194d9dd/jupyter_core-5.9.1.tar.gz"
    sha256 "4d09aaff303b9566c3ce657f580bd089ff5c91f5f89cf7d8846c3cdf465b5508"
  end

  resource "matplotlib-inline" do
    url "https://files.pythonhosted.org/packages/bd/c0/9f7c9a46090390368a4d7bcb76bb87a4a36c421e4c0792cdb53486ffac7a/matplotlib_inline-0.2.2.tar.gz"
    sha256 "72f3fe8fce36b70d4a5b612f899090cd0401deddc4ea90e1572b9f4bfb058c79"
  end

  resource "nest-asyncio2" do
    url "https://files.pythonhosted.org/packages/32/2c/70e3b6bb2189cfd260280b7e1042bd622949a258663f95e887fada4ac1e6/nest_asyncio2-1.7.4.tar.gz"
    sha256 "995b1409d926ec55e0876ea39a69bffdd8852cf1db3652c177e8c8ffdbcaf3cc"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/30/4b/90c937815137d43ce71ba043cd3566221e9df6b9c805f24b5d138c9d40a7/parso-0.8.7.tar.gz"
    sha256 "eaaac4c9fdd5e9e8852dc778d2d7405897ec510f2a298071453e5e3a07914bb1"
  end

  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/42/92/cc564bf6381ff43ce1f4d06852fc19a2f11d180f23dc32d9588bee2f149d/pexpect-4.9.0.tar.gz"
    sha256 "ee7d41123f3c9911050ea2c2dac107568dc43b2d3b0c7557a33212c398ead30f"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/80/a8/66d45abadff219e36e2a824181b8f6a67e7ed4572934d6252c71c29d5731/platformdirs-4.13.0.tar.gz"
    sha256 "1aa0b0d3f224c1f07c295121e312a5a24a180d6ae5a8425ea1784b3e3863e9c0"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/7d/ea/39b988c938f75cb75d7045b5c69f8bfed47ee2152c8837fb403de29d6fb8/prompt_toolkit-3.0.53.tar.gz"
    sha256 "9ec8a0ad96d5c56148b3f914aa79c1564c3fde5d2e6b876e7bc327e353cf8fa6"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/c6/d1ddf4abb55e93cebc4f2ed8b5d6dbad109ecb8d63748dd2b20ab5e57ebe/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/20/e5/16ff212c1e452235a90aeb09066144d0c5a6a8c0834397e03f5224495c4e/ptyprocess-0.7.0.tar.gz"
    sha256 "5c5d0a3b48ceee0b48485e0c26037c0acd7d29765ca3fbb5cb3831d347423220"
  end

  resource "pure_eval" do
    url "https://files.pythonhosted.org/packages/da/9f/abfd2959e9261dd5217ca8551d4de211ca6ab26fe9b72cf44731ff6c4442/pure_eval-0.2.4.tar.gz"
    sha256 "260c2774686e651b79f8b8e7fc9d80b3599ea6a66334b47d5f4abb69fc2c0ea1"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "stack-data" do
    url "https://files.pythonhosted.org/packages/28/e3/55dcc2cfbc3ca9c29519eb6884dd1415ecb53b0e934862d3559ddcb7e20b/stack_data-0.6.3.tar.gz"
    sha256 "836a778de4fec4dcd1dcd89ed8abff8a221f58308462e1c4aa2a3cf30148f0b9"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/06/61/53d562a57b28c08eda40b258c0f975e360541943ad7c7bef897a40caafda/tornado-6.5.10.tar.gz"
    sha256 "a6b1ccd08c04b4a06fb5aeb381be99de5ad1e5375c1785e31d78c880feb57687"
  end

  resource "traitlets" do
    url "https://files.pythonhosted.org/packages/2c/2e/a7fbfe268c8a3b32546930c0297c101d65a4a14c304ad5790a9f478f0e4e/traitlets-5.16.1.tar.gz"
    sha256 "ed900c2b631aa3a112811139fa97b8d2c3bad5e989656bba4b7e52c7852c18c1"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/f0/b4/7830542634bb2d3e62aa3b586a72d5b3b6c91c3168929e7000ef3fed041d/wcwidth-0.9.2.tar.gz"
    sha256 "ae0ef90b90f6af38b54f1fe6d58662ec33b3cb4b8391958a62416d654231727b"
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

    # Matplotlib and dependencies (each after its own dependencies).
    venv.pip_install resource("six")
    venv.pip_install resource("packaging")
    venv.pip_install resource("python-dateutil")
    venv.pip_install resource("pillow")
    venv.pip_install resource("fonttools")
    venv.pip_install resource("numpy")
    venv.pip_install resource("contourpy")
    venv.pip_install resource("kiwisolver")
    venv.pip_install resource("pyparsing")
    venv.pip_install resource("cycler")
    venv.pip_install resource("matplotlib")

    # All below is to get the jupyter kernel to work. This should
    # probably move into a separate package. Installed in dependency
    # order, since each pip_install runs without dependency resolution.
    venv.pip_install resource("pyzmq")
    venv.pip_install resource("appnope")
    venv.pip_install resource("asttokens")
    venv.pip_install resource("comm")
    venv.pip_install resource("debugpy")
    venv.pip_install resource("decorator")
    venv.pip_install resource("executing")
    venv.pip_install resource("Pygments")
    venv.pip_install resource("ipython_pygments_lexers")
    venv.pip_install resource("parso")
    venv.pip_install resource("jedi")
    venv.pip_install resource("traitlets")
    venv.pip_install resource("matplotlib-inline")
    venv.pip_install resource("ptyprocess")
    venv.pip_install resource("pexpect")
    venv.pip_install resource("wcwidth")
    venv.pip_install resource("prompt_toolkit")
    venv.pip_install resource("psutil")
    venv.pip_install resource("pure_eval")
    venv.pip_install resource("stack-data")
    venv.pip_install resource("ipython")
    venv.pip_install resource("platformdirs")
    venv.pip_install resource("jupyter_core")
    venv.pip_install resource("tornado")
    venv.pip_install resource("typing-extensions")
    venv.pip_install resource("jupyter_client")
    venv.pip_install resource("nest-asyncio2")
    venv.pip_install resource("ipykernel")
    
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
