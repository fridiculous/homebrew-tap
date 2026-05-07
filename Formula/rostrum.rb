class Rostrum < Formula
  desc "Global git worktree switchboard"
  homepage "https://github.com/fridiculous/rostrum"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fridiculous/rostrum/releases/download/v0.1.0/rostrum-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_AARCH64_APPLE_DARWIN_SHA256"
    else
      url "https://github.com/fridiculous/rostrum/releases/download/v0.1.0/rostrum-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_X86_64_APPLE_DARWIN_SHA256"
    end
  end

  on_linux do
    url "https://github.com/fridiculous/rostrum/releases/download/v0.1.0/rostrum-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "REPLACE_WITH_X86_64_UNKNOWN_LINUX_GNU_SHA256"
  end

  def install
    bin.install Dir["rsm-*"][0] => "rsm"
  end

  test do
    assert_match "Global worktree switchboard", shell_output("#{bin}/rsm --help")
  end
end
