class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.28/awork-osx-arm64.tar.gz"
      sha256 "766a63109de3e43b9fb4ac667cb8927f3dd163e13944a23c402db3c9919522fa"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.28/awork-osx-x64.tar.gz"
      sha256 "1d7855f16e880294a67bfe7c5969b37c316bf412e0493c97ed5d17924acdea79"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.2.28/awork-linux-x64.tar.gz"
    sha256 "3a470c183433c0ffeae53267489a67ed7ba9609199074ba04b46536e6d7f9f6c"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
