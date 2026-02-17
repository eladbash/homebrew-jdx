class Jdx < Formula
  desc "JSON Data eXplorer — interactive, AI-augmented terminal JSON viewer"
  homepage "https://github.com/eladbash/jdx"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eladbash/jdx/releases/download/v0.1.3/jdx-aarch64-apple-darwin.tar.gz"
      sha256 "aa5fef7c419e7da1ec669d03643240ac20f1fe4858787f6f4b2e306fe6af9b45"
    else
      url "https://github.com/eladbash/jdx/releases/download/v0.1.3/jdx-x86_64-apple-darwin.tar.gz"
      sha256 "e27f0f4f4c9f03cf0b87ef3b1ecc58555d67d6be64791e441341b6ba34c2ffc7"
    end
  end

  on_linux do
    url "https://github.com/eladbash/jdx/releases/download/v0.1.3/jdx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3129affcb5506ecb308f92dd63c72b63b565e25b0e002186eff5c32fb7c311ac"
  end

  def install
    bin.install "jdx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jdx --version")
  end
end
