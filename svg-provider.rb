class SvgProvider < Formula
  desc "Svg convert provider for ImageMagick delegate(internal)"
  homepage "https://github.com/aimingoo/svg-provider"
  version "1.0.2"

  url "https://github.com/aimingoo/svg-provider/archive/v#{version}.tar.gz"
  sha256 "f794c96d2c3e25e89f4e8247adcb3a2cdc28678ddf0ab10b51d4db7b0132a270"

  def install
    bin.install "svg-provider"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/svg-provider --version")
    ohai "Okay"
  end
end
