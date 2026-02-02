class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.2.0/awork-osx-arm64.tar.gz"
      sha256 "b1ec1eb71d2295c794fff21283a7161a8c6c151db403f5ea445e560b99cd8f4e"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.2.0/awork-osx-x64.tar.gz"
      sha256 "3064be44c62a17ed21d08be6f40dfd06ba5c44f8b02784b9f144344ba46ad599"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.2.0/awork-linux-x64.tar.gz"
    sha256 "d84d098a3b3e5abaf859b215d40c9f49824bd231b80c53b9949f9f1157862e22"
  end

  def install
    bin.install "awk-cli"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awk-cli --help")
  end
end
