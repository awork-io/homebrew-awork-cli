class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.2.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.23/awork-osx-arm64.tar.gz"
      sha256 "93a371b583f1d49bfdc7d9f6f7e05ad9988a2b5a73294f19d884d0000211786b"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.23/awork-osx-x64.tar.gz"
      sha256 "e8ccdcbb82bececd3f89783f00f47fac747f0c4d011e3057c447b8939e177f3a"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.2.23/awork-linux-x64.tar.gz"
    sha256 "1f0bb53d19e5aef664a1c0385f20454f91d3d4a05ede2b7050201e18a719dd99"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
