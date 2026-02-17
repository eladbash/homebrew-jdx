class Jdx < Formula
  desc "JSON Data eXplorer — interactive, AI-augmented terminal JSON viewer"
  homepage "https://github.com/eladbash/jdx"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eladbash/jdx/releases/download/v0.1.1/jdx-aarch64-apple-darwin.tar.gz"
      sha256 "a8d7148cc3d25538f80d00f524f5ba827679df7305c185a238e3a960740e0493"
    else
      url "https://github.com/eladbash/jdx/releases/download/v0.1.1/jdx-x86_64-apple-darwin.tar.gz"
      sha256 "fa7781043cb288efa44733de88af40815787535b564b24b45bfdb4e014c53ca7"
    end
  end

  on_linux do
    url "https://github.com/eladbash/jdx/releases/download/v0.1.1/jdx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e5f2d094afde0b9cd8e67589aefecfd5589fe0c406554d44540edd09cd04efe7"
  end

  def install
    bin.install "jdx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jdx --version")
  end
end
