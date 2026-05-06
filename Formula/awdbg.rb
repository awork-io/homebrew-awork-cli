class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/awork-io/awork-debugger/releases/download/v0.2.4/awdbg-v0.2.4-macos-arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4e0cc70cfd91a1e2829f295bf1996cb1212fe31c2cd89ea6bb790c2e31a01a7d"
    else
      url "https://github.com/awork-io/awork-debugger/releases/download/v0.2.4/awdbg-v0.2.4-macos-x64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "02060d313e0f253bb8283b9b13d241401d033042c9d67a31e66a28dc189a50b2"
    end
  end

  def install
    bin.install "awdbg"
  end

  test do
    system "#{bin}/awdbg", "--version"
  end
end
