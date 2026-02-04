class Awork < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.3/awork-osx-arm64.tar.gz"
      sha256 "43895c308e96c7c0a0e1c2364f416ecba7aa843b30f27aef773df54410a6e14a"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.3/awork-osx-x64.tar.gz"
      sha256 "76f1ad29a2dd2485f708fd122619b0bdf2e0aa757cf4dd4e9ce6ec82b3dbe279"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.3.3/awork-linux-x64.tar.gz"
    sha256 "2dc8b5302da1566a9bf03806339981a0b4d0991569848c77612e8cfad67d112f"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
