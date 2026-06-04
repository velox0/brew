class Thingy < Formula
  desc "Sakura-themed TUI editor with code execution"
  homepage "https://github.com/Velox0/thingy"
  url "https://github.com/velox0/thingy/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "7fa2424e5ec9dcf1cc16809ccde65d3f941238fbe38d5a1b9274c01864b19130"
  license "Unlicense"

  depends_on "ncurses"
  depends_on "curl"

  def install
    system "make"
    bin.install "build/bin/thingy"
  end

  test do
    system "#{bin}/thingy", "--help"
  end
end
