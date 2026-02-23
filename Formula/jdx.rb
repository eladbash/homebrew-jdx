class Jdx < Formula
  desc "JSON Data eXplorer — interactive, AI-augmented terminal JSON viewer"
  homepage "https://github.com/eladbash/jdx"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eladbash/jdx/releases/download/v0.2.0/jdx-aarch64-apple-darwin.tar.gz"
      sha256 "56a27d92c1326f9c12160733c42877d0ef6da076c0e25a9586e4856acf505c90"
    else
      url "https://github.com/eladbash/jdx/releases/download/v0.2.0/jdx-x86_64-apple-darwin.tar.gz"
      sha256 "d446a62f4323b3a79e7d169f2fa33c2948e933a9be7722586bb36b004e9a7962"
    end
  end

  on_linux do
    url "https://github.com/eladbash/jdx/releases/download/v0.2.0/jdx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "925b144335410e40d6a35298cb69e349c0da85877a3a0e6359eb4c3d0cd54207"
  end

  def install
    bin.install "jdx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jdx --version")
  end
end
