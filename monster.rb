class Monster < Formula
  desc "Full or incremental static site generator for Ghost"
  homepage "https://github.com/aimingoo/monster"
  version "1.0.4"

  url "https://github.com/aimingoo/monster/archive/v#{version}.tar.gz"
  mirror "https://aimingoo.github.io/content/releases/monster/monster-#{version}.tar.gz"
  sha256 "bf04d22dde9b7e569cff72554148f711d18621c8d8e7c87b9466c95126ef5506"

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
