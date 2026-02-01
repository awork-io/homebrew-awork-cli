class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.1/awork-osx-arm64.tar.gz"
      sha256 "65c7d1ddb4836a97fdc3c1750ec6baa73422d552512def065fda4af3edd9b611"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.1/awork-osx-x64.tar.gz"
      sha256 "4e41b62e3b40167f0b54670ebdb4fe55fb66ae690e72d94bfd63247e48cd04ef"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.1.1/awork-linux-x64.tar.gz"
    sha256 "bd321c9a25e51fd2f9d4a09ae3e7bce2084816e2157b7aa09d840bd0b35df934"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
