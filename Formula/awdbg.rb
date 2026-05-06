class Awdbg < Formula
  desc "Investigate awork tasks, Sentry issues, and SigNoz traces"
  homepage "https://github.com/awork-io/awork-debugger"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/413890908",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "f78a946ac83b115998f58c92c35b34b271da7cd8776047067f262c5c57f80c84"
    else
      url "https://api.github.com/repos/awork-io/awork-debugger/releases/assets/413890911",
          headers: [
            "Accept: application/octet-stream",
            "Authorization: Bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}",
          ]
      sha256 "83c190955dbb234d488bf2871d53f3625636af3be332da41e511d1f74e35aff1"
    end
  end

  def install
    bin.install "awdbg"
  end

  test do
    system "#{bin}/awdbg", "--version"
  end
end
