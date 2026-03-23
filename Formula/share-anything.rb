class ShareAnything < Formula
  desc "CLI for Share Anything - Fast file sharing from the terminal"
  homepage "https://github.com/bestdevmgp/share-anything-cli"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-aarch64"
      sha256 "72ce7cb5660d76a401d1bcf1adf9a06585e288cc2e62dd957a75e52ef03e8af0"

      def install
        bin.install "share-macos-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-x86_64"
      sha256 "3913f1dce9d15071980e75a633730d0b9d6e7b1af8c5fb83e76434cde0843c70"

      def install
        bin.install "share-macos-x86_64" => "share"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-aarch64"
      sha256 "b20f25248e81bbe71919a913cbbee4886507ab6736f8d8254df5e8f5545b4e45"

      def install
        bin.install "share-linux-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-x86_64"
      sha256 "8baf86e8aa7c7945003a3d4c3ce237ac45facf3e758e9965090a5c9a7ca5f5e8"

      def install
        bin.install "share-linux-x86_64" => "share"
      end
    end
  end

  test do
    assert_match "share", shell_output("#{bin}/share --version")
  end
end
