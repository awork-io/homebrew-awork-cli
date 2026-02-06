class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.5/awork-osx-arm64.tar.gz"
      sha256 "3e77754b24b3212d268ea5117d81e45f8953bb628ed6c1d374584d2b65eb7a4d"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.5/awork-osx-x64.tar.gz"
      sha256 "95e2af699d70670c63e4faace0775321b86ae63e6b18ebbd40776c18dc2ffd01"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.3.5/awork-linux-x64.tar.gz"
    sha256 "a1b7dcbaf9958feb6ba69a57fd7613a30c1e8753a9ef6b1728be52e340e7ceb8"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
