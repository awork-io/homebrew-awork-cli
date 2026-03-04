class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.4.0/awork-osx-arm64.tar.gz"
      sha256 "002ccbd17c78b17b4a3f88b34e25e7effcc87a2a6e3a0937b5ea2de6c2ee36fb"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.4.0/awork-osx-x64.tar.gz"
      sha256 "ef785e37314ea8c4616d50e600d82e85a02034d08fdae0b7492d9769589fd589"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.4.0/awork-linux-x64.tar.gz"
    sha256 "a056bf3d80f68abf8fb5b73e4bb5787934620c4d51181cb2fa453edce1a36886"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
