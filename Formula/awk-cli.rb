class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.2.2/awork-osx-arm64.tar.gz"
      sha256 "98a2023df4f404042cb3782cbb6b43553913310737359d88576d0762612615ec"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.2.2/awork-osx-x64.tar.gz"
      sha256 "5f05b98bfa0d0dcd5848e9e10cab69d97f28ad0a45086e0112c7094b57d0a04b"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.2.2/awork-linux-x64.tar.gz"
    sha256 "1d3de229cd39ba7858a91f12dbad5a06ff4f54e47488ba1443d5d42fa613e8d8"
  end

  def install
    bin.install "awk-cli"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awk-cli --help")
  end
end
