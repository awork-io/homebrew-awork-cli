class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.22/awork-osx-arm64.tar.gz"
      sha256 "56835dd849444fc6201517d051891dd3d210e04e593532efce2283c426989546"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.22/awork-osx-x64.tar.gz"
      sha256 "b2acc2955903f1431f36d509313e2d8d1a8e2ca664711e4aa97bbf5d8a908cb1"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.2.22/awork-linux-x64.tar.gz"
    sha256 "71410b5b51f22ae3ca209f21594fd13334cf86c3fa8c183fbb32be38a9d97396"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
