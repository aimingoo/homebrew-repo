class Monster < Formula
  desc "Full or incremental static site generator for Ghost"
  homepage "https://github.com/aimingoo/monster"
  version "1.0.3"

  url "https://github.com/aimingoo/monster/archive/v#{version}.tar.gz"
  mirror "https://aimingoo.github.io/content/releases/monster/monster-#{version}.tar.gz"
  sha256 "b83ef565342eccd0da1052519aec29335a2af402bfc3a000400ff580bcd28b3b"

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
