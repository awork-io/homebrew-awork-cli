class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.27/awork-osx-arm64.tar.gz"
      sha256 "ccb9b935f61304230d9678049b12b562b54ca407295e2a76a1fb445d1ee46719"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.27/awork-osx-x64.tar.gz"
      sha256 "ef121371a1fc55fc3ed65a21cebfcbbfb7a42b367a520386ce5982e320fb7f9e"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.2.27/awork-linux-x64.tar.gz"
    sha256 "32f5d9ec3a07d691819f9be3884bf8538a0fd6bec8c4550d53067c7f77a25689"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
