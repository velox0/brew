class Thingy < Formula
  desc "Sakura-themed TUI editor with code execution"
  homepage "https://github.com/Velox0/thingy"
  url "https://github.com/velox0/thingy/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "db775f9564b752d1c56ad747cf00dc8d8230b143e610e8a1701c11673ec88fbb"
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
