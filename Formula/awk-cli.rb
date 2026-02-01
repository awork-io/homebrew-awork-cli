class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.0/awork-osx-arm64.tar.gz"
      sha256 "2dcd9695ab96f9eeadbfc7ffc96141bb2b20605ac8defa811d52b5efab415c37"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.0/awork-osx-x64.tar.gz"
      sha256 "5019e7ed035171cc381c6950fb71d23ce1b52051d30518edc4c95a342082c4bb"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.1.0/awork-linux-x64.tar.gz"
    sha256 "b95aace7c36ff721dd74e605cb2e3c38ebed732ebef7456fe8e69f7f1b35ebf7"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "awork", shell_output("#{bin}/awork --version")
  end
end
