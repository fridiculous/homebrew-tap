class Rostrum < Formula
  desc "Global git worktree switchboard"
  homepage "https://github.com/fridiculous/rostrum"
  url "https://github.com/fridiculous/rostrum/archive/refs/heads/main.tar.gz"
  sha256 "a83a80039d4290bd2b6b354171945e06f6323be459340dcb6b9027cb46bb7b1d"
  license "MIT"
  head "https://github.com/fridiculous/rostrum.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Global worktree switchboard", shell_output("#{bin}/rsm --help")
  end
end
