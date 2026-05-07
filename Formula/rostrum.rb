class Rostrum < Formula
  desc "Global git worktree switchboard"
  homepage "https://github.com/fridiculous/rostrum"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fridiculous/rostrum/releases/download/v0.1.0/rostrum-aarch64-apple-darwin.tar.gz"
      sha256 "f77fb2138a11a9864db323cbddd2f3eda33f51fe3d06d22c63c51a7f24c94c1f"
    else
      url "https://github.com/fridiculous/rostrum/releases/download/v0.1.0/rostrum-x86_64-apple-darwin.tar.gz"
      sha256 "7929f4a15acee8f3bf97c7acb99a6ccf487248c4189a0fbf979be1b71cddd408"
    end
  end

  on_linux do
    url "https://github.com/fridiculous/rostrum/releases/download/v0.1.0/rostrum-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cbbd730ed576b78ddf7d001ce5ef77fd2a4c01d4c75544980c20094db6f38ae6"
  end

  def install
    bin.install Dir["rsm-*"][0] => "rsm"
  end

  test do
    assert_match "Global worktree switchboard", shell_output("#{bin}/rsm --help")
  end
end
