class Workback < Formula
  include Language::Python::Virtualenv

  desc  "An agentic debugging tool that lives in your terminal and helps you debug faster - all through natural language commands."
  homepage "https://hyperdrive.engineering"
  url "https://files.pythonhosted.org/packages/source/w/workback/workback-0.1.3.tar.gz"
  sha256 "426178bc1f04b855cdef03276cc12171b6d98019d6136594ed4d4a64f8314f72"
  license "All rights reserved"

  depends_on "python3"

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install_and_link buildpath
  end

end
