class AworkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.26/awork-osx-arm64.tar.gz"
      sha256 "ccfb1ff6732cb3365e1d35351eb4b3725c3ec3c1425a4737f28180881819efec"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.2.26/awork-osx-x64.tar.gz"
      sha256 "396b39bbac60e897fa60f9647b59e8f60a741a82f431c00fbaa51d7e89682b97"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.2.26/awork-linux-x64.tar.gz"
    sha256 "909c90222b88db42e52bf222f2817ca16a18ba38e67cf7a6b45d15cfa9196a8e"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
