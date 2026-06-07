class Thingy < Formula
  desc "Sakura-themed TUI editor with code execution"
  homepage "https://thingy.velox0.com/"
  url "https://github.com/velox0/thingy/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "6bf81e96c0d70a8cafe02620fac161e824ee9e0e393cf816404cecac354b9d33"
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
