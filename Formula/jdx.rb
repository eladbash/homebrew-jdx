class Jdx < Formula
  desc "JSON Data eXplorer — interactive, AI-augmented terminal JSON viewer"
  homepage "https://github.com/eladbash/jdx"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eladbash/jdx/releases/download/v0.2.0/jdx-aarch64-apple-darwin.tar.gz"
      sha256 "349acc4b44df180a27e0d2acafc482c763226c86eb689a5813bf92c19d5bd0ab"
    else
      url "https://github.com/eladbash/jdx/releases/download/v0.2.0/jdx-x86_64-apple-darwin.tar.gz"
      sha256 "f995e24104d381f58ba6bc53225d17edf0eaefbcdf3f086fc1672b6c098b2d38"
    end
  end

  on_linux do
    url "https://github.com/eladbash/jdx/releases/download/v0.2.0/jdx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8ec2ab921dd30f2b6fc1edf0d82cb61acac2d9e19f57b380aca1be0f899aea4"
  end

  def install
    bin.install "jdx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jdx --version")
  end
end
