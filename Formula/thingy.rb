class Thingy < Formula
  desc "Sakura-themed TUI editor with code execution"
  homepage "https://thingy.velox0.com/"
  url "https://github.com/velox0/thingy/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "522ed55d2df14cec2c5a4a9a7228230c3ff6a16d71bf30f8d5d4cdfaaa54af33"
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
