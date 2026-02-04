class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.4/awork-osx-arm64.tar.gz"
      sha256 "24754306f5fc72e3c826e553d8dd02afd6b68e86ebb4d2f1c22f84b169cb7c6a"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.4/awork-osx-x64.tar.gz"
      sha256 "81b422ba214b593d66361101196c4e996cc58d3b83d523e9d95dd0e7e62e7010"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.3.4/awork-linux-x64.tar.gz"
    sha256 "10e54960300977047039e36b6e85b5b00da71c4998422bd4f4731c8e0bea5ffc"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
