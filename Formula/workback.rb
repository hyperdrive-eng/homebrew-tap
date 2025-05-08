class Workback < Formula
  include Language::Python::Virtualenv

  desc  "An agentic debugging tool that lives in your terminal and helps you debug faster - all through natural language commands."
  homepage "https://hyperdrive.engineering"
  url "https://files.pythonhosted.org/packages/source/w/workback/workback-0.1.1.tar.gz"
  sha256 "d43e8083ec8054eb54307b8d81b9517cf0b9751737edd8bd1171ddac0ff9bf1b"
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
