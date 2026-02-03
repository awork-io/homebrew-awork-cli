class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.3.1/awork-osx-arm64.tar.gz"
      sha256 "155b3735a7af413c3fe9dd8591696e57ff368f57d5aea766c893696505491039"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.3.1/awork-osx-x64.tar.gz"
      sha256 "f905c5c37f55012679d3393671a4e719edd198995cf0f3c02c5d4deddcb9c002"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.3.1/awork-linux-x64.tar.gz"
    sha256 "57b37a27317e54f4dddafea9d7dffdde5325e90024fc72eda0f14e2756044f28"
  end

  def install
    bin.install "awk-cli"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awk-cli --help")
  end
end
