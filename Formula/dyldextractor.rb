# typed: false
# frozen_string_literal: true

# generated by poet
class Dyldextractor < Formula
    include Language::Python::Virtualenv
  
    desc "Extract unoptimized libraries from the shared cache, making proper RE possible."
    homepage "https://github.com/arandomdev/dyldextractor"
    url "https://files.pythonhosted.org/packages/44/dd/e40b4fd57147d13114d813d4d5131bb708f8f167aba52c1028da3af7d322/dyldextractor-1.0.6.tar.gz"
    sha256 "4aba9ac54d1288eca4060a791a585986766d56d17667231a43db69c527bf5d14"
  
    depends_on "python3"
  
    resource "capstone" do
      url "https://files.pythonhosted.org/packages/f2/ae/21dbb3ccc30d5cc9e8cdd8febfbf5d16d93b8c10e595280d2aa4631a0d1f/capstone-4.0.2.tar.gz"
      sha256 "2842913092c9b69fd903744bc1b87488e1451625460baac173056e1808ec1c66"
    end
  
    resource "progressbar2" do
      url "https://files.pythonhosted.org/packages/ec/91/8ccedd384153a4f070be8b8d0fc0f9f6436bcc0d1ad4b4d1f891343d109c/progressbar2-3.55.0.tar.gz"
      sha256 "86835d1f1a9317ab41aeb1da5e4184975e2306586839d66daf63067c102f8f04"
    end
  
    resource "python-utils" do
      url "https://files.pythonhosted.org/packages/03/d8/3ad4dd157e5a36184df0280857bcaea60b13cb6e945e27ac3d8589f8c2a2/python-utils-2.5.6.tar.gz"
      sha256 "352d5b1febeebf9b3cdb9f3c87a3b26ef22d3c9e274a8ec1e7048ecd2fac4349"
    end
  
    resource "six" do
      url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
      sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end
  
    def install
      virtualenv_create(libexec, "python3")
      virtualenv_install_with_resources
    end
  
    test do
      false
    end
  end