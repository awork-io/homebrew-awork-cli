class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/441850987",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "6b8d2281d4c9fed5799d107e937509e9d70b4a9337df1ca0ca22d929afa483d8"
    else
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/441850988",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "921e293b61c979b74f55aa4d5141e49ec90e8c2c0819f66c8c2db6467e7b7534"
    end
  end

  def install
    bin.install "awdbg"
  end

  test do
    system "#{bin}/awdbg", "--version"
  end
end
