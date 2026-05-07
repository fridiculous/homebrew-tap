class Rostrum < Formula
  include Language::Python::Shebang

  desc "Global git worktree switchboard"
  homepage "https://github.com/fridiculous/rostrum"
  url "https://static.crates.io/crates/rostrum-cli/rostrum-cli-0.1.0.crate"
  sha256 "d624fae2770300abc1bf1fa9f19fb460b48411d00789bd1202c417b9fe76602c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Global worktree switchboard", shell_output("#{bin}/rsm --help")
  end
end
