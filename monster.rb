class Monster < Formula
  desc "Full or incremental static site generator for Ghost"
  homepage "https://github.com/aimingoo/monster"
  version "1.0.5"

  url "https://github.com/aimingoo/monster/archive/v#{version}.tar.gz"
  mirror "https://aimingoo.github.io/content/releases/monster/monster-#{version}.tar.gz"
  sha256 "89a7583f2024fc47980d18e26a8e9c4a7c6c54f568aeed79e789d1f3f08df741"

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
