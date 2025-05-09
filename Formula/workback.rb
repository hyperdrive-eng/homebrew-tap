class Workback < Formula
  include Language::Python::Virtualenv

  desc  "An agentic debugging tool that lives in your terminal and helps you debug faster - all through natural language commands."
  homepage "https://hyperdrive.engineering"
  url "https://files.pythonhosted.org/packages/source/w/workback/workback-0.1.2.tar.gz"
  sha256 "8dca3ac94453aee68b4f79a824618a31d136be921aa14c9101f993d846d8174e"
  license "All rights reserved"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    # Add a basic test to verify installation succeeded
    system "#{bin}/workback", "version"
  end
end
