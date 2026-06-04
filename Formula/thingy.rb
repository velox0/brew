class Thingy < Formula
  desc "Sakura-themed TUI editor with code execution"
  homepage "https://github.com/Velox0/thingy"
  url "https://github.com/velox0/thingy/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "5f1c032967be35faf44482ff71a81691caadc40d13ce31aca25f5d754fce7736"
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
