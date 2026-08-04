class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.2.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/501525948",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "4519ece248a5b60b988450ae56abe6a67f4c827a7e11b66cbf3944bc6f66b0dc"
    else
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/501525956",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "7e63d6848afc28808a283b02ccab8556c2e503a69e925b28932d6c7cc31d3be0"
    end
  end

  def install
    bin.install "awdbg"
  end

  test do
    system "#{bin}/awdbg", "--version"
  end
end
