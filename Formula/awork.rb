class Awork < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awork-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.2/awork-osx-arm64.tar.gz"
      sha256 "2b1702ec8bbb8269a8aaffd2510bd8ef6b74ab389cafd220ffc3eff82e941aeb"
    end

    on_intel do
      url "https://github.com/awork-io/awork-cli/releases/download/v0.3.2/awork-osx-x64.tar.gz"
      sha256 "bd05afa0cde99f670a699b5c8de9843cc81c6fb9f8af57db50bc31ffe5c759bc"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awork-cli/releases/download/v0.3.2/awork-linux-x64.tar.gz"
    sha256 "44800947f5a4e249a11625f7a2f494425525545b170b0c55ba9cf05a27e3d152"
  end

  def install
    bin.install "awork"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awork --help")
  end
end
