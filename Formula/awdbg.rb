class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/awork-io/awork-debugger/releases/download/v0.1.0/awdbg-v0.1.0-macos-arm64.tar.gz"
      sha256 "7c45566c390c5d6eb31eed56ca224a9e406788eefc4e74c16a5b7ab9ee56740a"
    else
      url "https://github.com/awork-io/awork-debugger/releases/download/v0.1.0/awdbg-v0.1.0-macos-x64.tar.gz"
      sha256 "d07c2c3b4fd0ddecf958c978f65cb96ba48d01bfa891183afca145536fdd314b"
    end
  end

  def install
    bin.install "awdbg"
  end

  test do
    system "#{bin}/awdbg", "--version"
  end
end
