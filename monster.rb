class Monster < Formula
  desc "Full or incremental static site generator for Ghost"
  homepage "https://github.com/aimingoo/monster"
  version "1.0.0"

  url "https://github.com/aimingoo/monster/archive/v#{version}.tar.gz"
  mirror "https://aimingoo.github.io/content/releases/monster/monster-#{version}.tar.gz"
  sha256 "65651224ebdf36c29e642d87aa0c1e67987fd739d5e65d1d088bccaf064aaa9c"

  def install
    bin.install "libexec/monster.sh" => "monster"
    libexec.install "libexec/makesite.sh"
    libexec.install "libexec/updatesite.sh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/monster --version")
    ohai "Okay"
  end
end
