class Workback < Formula
  include Language::Python::Virtualenv

  desc  "An agentic debugging tool that lives in your terminal and helps you debug faster - all through natural language commands."
  homepage "https://hyperdrive.engineering"
  url "https://files.pythonhosted.org/packages/source/w/workback/workback-0.1.2.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
