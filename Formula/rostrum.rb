class Rostrum < Formula
  desc "Global git worktree switchboard"
  homepage "https://github.com/fridiculous/rostrum"
  url "https://github.com/fridiculous/rostrum/archive/5694896f9e3ccbd3e5ae74a0f5f41a4595112a7d.tar.gz"
  sha256 "d8feb52cebed4a645e584ef4a8198decf0cfcc59279c3ac6e31af53b61de0f24"
  license "MIT"
  version "0.1.0-git"
  head "https://github.com/fridiculous/rostrum.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Global worktree switchboard", shell_output("#{bin}/rsm --help")
  end
end
