class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.2/awork-osx-arm64.tar.gz"
      sha256 "bc1006dfef8b4f38d2da4f2b854c265f731097f79b081ef20738a14ed66574f8"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.2/awork-osx-x64.tar.gz"
      sha256 "249b2fbeb4fdc78b9a526b9bc489e7c9e4ba26ea54bef0f5f9eea3b66e91ded2"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.1.2/awork-linux-x64.tar.gz"
    sha256 "896312ec7da31e019608b4622e266d033fef3b00581f986625be271c462e1381"
  end

  def install
    bin.install "awk-cli"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awk-cli --help")
  end
end
