class Jdx < Formula
  desc "JSON Data eXplorer — interactive, AI-augmented terminal JSON viewer"
  homepage "https://github.com/eladbash/jdx"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eladbash/jdx/releases/download/v0.1.0/jdx-aarch64-apple-darwin.tar.gz"
      sha256 "2dd15d277a9e5e334c5e6eef6638e4ba77f4bc71d3c74aae53bee24197732321"
    else
      url "https://github.com/eladbash/jdx/releases/download/v0.1.0/jdx-x86_64-apple-darwin.tar.gz"
      sha256 "5ea7c0eb3f3f38c4b726de293b8eb450befd9494210c2f2f95b5af849786dc6c"
    end
  end

  on_linux do
    url "https://github.com/eladbash/jdx/releases/download/v0.1.0/jdx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ae6ce1cd2a4d3c490396eebb2f317e7827f5bb202ebc4d2f225a67f3102c7daf"
  end

  def install
    bin.install "jdx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jdx --version")
  end
end
