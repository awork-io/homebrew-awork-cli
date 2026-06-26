class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.2.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.25/awork-osx-arm64.tar.gz"
      sha256 "307f1fa9513b21bb781ec3b7a54d1ddca23583700a305dac7c0afbf698fca8da"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.25/awork-osx-x64.tar.gz"
      sha256 "c44f8764a055fbbcddfe1f1ee3aae05623c820380c1040fd6674cd5a359dd9f9"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.2.25/awork-linux-x64.tar.gz"
    sha256 "18e02455bf3d6a550ea601664077084fc6e326d51fd1c731c193b4244ff66990"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
