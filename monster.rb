class Monster < Formula
  desc "Full or incremental static site generator for Ghost"
  homepage "https://github.com/aimingoo/monster"
  version "1.0.6"

  url "https://github.com/aimingoo/monster/archive/v#{version}.tar.gz"
  mirror "https://aimingoo.github.io/content/releases/monster/monster-#{version}.tar.gz"
  sha256 "6fa6f0b6c06a545f19d4038cc2099871da5bfd5b325b4a921b3ac7c5de2515cc"

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
