class Monster < Formula
  desc "Full or incremental static site generator for Ghost"
  homepage "https://github.com/aimingoo/monster"

  url "https://github.com/aimingoo/monster/archive/v1.0.0.zip"
  mirror "https://aimingoo.github.io/content/releases/monster/monster-1.0.0.zip"
  version "1.0.0"
  sha256 "d8e12958c388ca6078579202db675052a8976a4f1ce1f446b4a5b17b909f0e5d"

  def install
    bin.install "libexec/monster.sh" => "monster"
    libexec.install "libexec/makesite.sh"
    libexec.install "libexec/updatesite.sh"
  end

  test do
    assert_match "#{version}", shell_output("monster --version")
    ohai "Okay"
  end
end