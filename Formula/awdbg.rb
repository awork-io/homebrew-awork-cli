class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/413884533",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "920bffa2e2dc93ffe38fd40da44f50a5e7c439ff890e8083f39689c1ab3ddb29"
    else
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/413884532",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
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
