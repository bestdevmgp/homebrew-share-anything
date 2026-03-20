class ShareAnything < Formula
  desc "CLI for Share Anything - Fast file sharing from the terminal"
  homepage "https://github.com/bestdevmgp/share-anything-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-aarch64"
      sha256 "db8fa0dca03181366d49a2ab507d0047dd6d00c97c8bca1997982601e4c5721f"

      def install
        bin.install "share-macos-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-x86_64"
      sha256 "950c160ae2d8cc55f6faa81cb13e77bd340a005a26ac72cc59217118f7c2a334"

      def install
        bin.install "share-macos-x86_64" => "share"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-aarch64"
      sha256 "eee191b89c20aef6e999dc7578c0951c1764cf692f9136599a05fc24bdb30c76"

      def install
        bin.install "share-linux-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-x86_64"
      sha256 "24046e2390fa00a74cb2a17a8c3f8940971c04bbe04c9e7be7e723fe0869d69d"

      def install
        bin.install "share-linux-x86_64" => "share"
      end
    end
  end

  test do
    assert_match "share", shell_output("#{bin}/share --version")
  end
end
