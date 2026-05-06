class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/awork-io/awork-debugger/releases/download/v0.2.5/awdbg-v0.2.5-macos-arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "920bffa2e2dc93ffe38fd40da44f50a5e7c439ff890e8083f39689c1ab3ddb29"
    else
      url "https://github.com/awork-io/awork-debugger/releases/download/v0.2.5/awdbg-v0.2.5-macos-x64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e61f494f4cea6e6196bd635f7a3be662fc11e6876eb0b4c2261ec988441a681b"
    end
  end

  def install
    bin.install "awdbg"
  end

  test do
    system "#{bin}/awdbg", "--version"
  end
end
