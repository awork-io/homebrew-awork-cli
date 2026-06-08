class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.2.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.24/awork-osx-arm64.tar.gz"
      sha256 "d12fce19f1a41264da2b340330de8d7819b7ec6329cdb13f52c9985bb98206be"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.24/awork-osx-x64.tar.gz"
      sha256 "abf5c73d360fb288a40e5fd4ea3a2c221328828fe227a4a70890b285b3e0d4c1"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.2.24/awork-linux-x64.tar.gz"
    sha256 "5fa0fd1877dc4e9adf7a1b1f0429d710607ab2c15f0f16b45b3a94697ef8db02"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
