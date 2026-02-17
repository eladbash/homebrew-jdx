class Jdx < Formula
  desc "JSON Data eXplorer — interactive, AI-augmented terminal JSON viewer"
  homepage "https://github.com/eladbash/jdx"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eladbash/jdx/releases/download/v0.1.2/jdx-aarch64-apple-darwin.tar.gz"
      sha256 "a270081e80000249760aa998f975045e24f3783c9aee0a21566e584e5f8e226d"
    else
      url "https://github.com/eladbash/jdx/releases/download/v0.1.2/jdx-x86_64-apple-darwin.tar.gz"
      sha256 "fc214f44af44f7e5ae24c4bccb157ddbf08d7d657447ace03a0f304a8323c905"
    end
  end

  on_linux do
    url "https://github.com/eladbash/jdx/releases/download/v0.1.2/jdx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3af3f5c270bada0baa3ea3bb93fb75d89c7c0f2df62f78b7f1df39d79cf31341"
  end

  def install
    bin.install "jdx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jdx --version")
  end
end
