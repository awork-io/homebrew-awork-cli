class AwkCli < Formula
  desc "Token-only, swagger-driven CLI for awork"
  homepage "https://github.com/awork-io/awk-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.3/awork-osx-arm64.tar.gz"
      sha256 "8a4ab18783dc4b0b26d5daedbe6631bb3dfe69f8cd80e3439496da9e7c84f487"
    end

    on_intel do
      url "https://github.com/awork-io/awk-cli/releases/download/v0.1.3/awork-osx-x64.tar.gz"
      sha256 "97574905128a6912bf3ef9daf60c0089a3c727f7c655b866e6b310df81d8ae62"
    end
  end

  on_linux do
    url "https://github.com/awork-io/awk-cli/releases/download/v0.1.3/awork-linux-x64.tar.gz"
    sha256 "3258055e6852b6e9c2704ea1f78b8808e24113639a49eda33cff6805bf584722"
  end

  def install
    bin.install "awk-cli"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/awk-cli --help")
  end
end
