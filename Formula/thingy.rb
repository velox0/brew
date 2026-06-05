class Thingy < Formula
  desc "Sakura-themed TUI editor with code execution"
  homepage "https://github.com/Velox0/thingy"
  url "https://github.com/velox0/thingy/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "7c27bfa92cec0152b8c8cc7fbf3cd2e481084dedd7e8fe5c8ae1a78bc1f279a1"
  license "Unlicense"

  depends_on "ncurses"
  depends_on "curl"

  def install
    system "make", "VERSION=#{version}"
    bin.install "build/bin/thingy"
  end

  test do
    system "#{bin}/thingy", "--help"
  end
end
