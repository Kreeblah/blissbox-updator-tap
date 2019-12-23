class BlissboxUpdator < Formula
  desc "Update utility for Bliss-Box hardware"
  homepage "https://github.com/Kreeblah/blissbox-updator"
  url "https://github.com/Kreeblah/blissbox-updator/archive/v1.0.1.tar.gz"
  sha256 "67cf9bf5db85f54d71d90d44d0bb813227c9f7a5b77568f1c0708ce61fe2de31"

  depends_on "libusb-compat" => :build

  def install
    Dir.chdir("commandline")
    system "make"
    bin.install "blissbox-updator"
  end

  test do
    assert_match "hexfile", shell_output("${bin}/blissbox-updator")
  end
end
