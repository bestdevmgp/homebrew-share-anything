class ShareAnything < Formula
  desc "CLI for Share Anything - fast file sharing from the terminal"
  homepage "https://github.com/bestdevmgp/share-anything-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-aarch64"
      sha256 "735137566d1656e0b59b30858b120ae0e496a336e2798503bec5485f8bb41c4c"

      def install
        bin.install "share-macos-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-x86_64"
      sha256 "e69f4ca46167ffd585e90de77e4b3049226badc837376c7843975684ca9f7331"

      def install
        bin.install "share-macos-x86_64" => "share"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-aarch64"
      sha256 "d7279cebbcd04c89da0c8c17361f852a327a95d4459871c58e2760767d373b43"

      def install
        bin.install "share-linux-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-x86_64"
      sha256 "0fd3b47d1d2051d20a8a65cd4d57f0d4728d2e89c1e9d9d541acc38b4f9e4315"

      def install
        bin.install "share-linux-x86_64" => "share"
      end
    end
  end

  test do
    assert_match "share", shell_output("#{bin}/share --version")
  end
end
