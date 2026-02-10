class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.7/awork-osx-arm64.tar.gz"
      sha256 "e62a3a52208a02383bb8a7d578a46e9f1a04f147ca3d5a8854505a795dec7590"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.7/awork-osx-x64.tar.gz"
      sha256 "5cd6b33b9b64362995a3b1fbeff439622de8abcfe017af594a21540147252766"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.3.7/awork-linux-x64.tar.gz"
    sha256 "c1606295bb1318c14ca9d7033f9e73afaf785d81b4819d659311781316d3274f"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
