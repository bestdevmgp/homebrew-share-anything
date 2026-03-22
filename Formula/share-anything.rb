class ShareAnything < Formula
  desc "CLI for Share Anything - Fast file sharing from the terminal"
  homepage "https://github.com/bestdevmgp/share-anything-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-aarch64"
      sha256 "8e05f844fcb9444b642405a2bc579c0c525195cdebbc1c5090742684db13a95f"

      def install
        bin.install "share-macos-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-x86_64"
      sha256 "d05ec74fbefda618e3b91fb170114463ec0895d9cbe69926502e2cb4d79baf6d"

      def install
        bin.install "share-macos-x86_64" => "share"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-aarch64"
      sha256 "c3b8b5e6d8676bba5768b20a2a0b1ae72b85f31765ef845d6e008e8aa4d4459b"

      def install
        bin.install "share-linux-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-x86_64"
      sha256 "2fef5c7555d7903460b5b5c186e56f0531fcd929fc9d9c8d8162a262bbb170a9"

      def install
        bin.install "share-linux-x86_64" => "share"
      end
    end
  end

  test do
    assert_match "share", shell_output("#{bin}/share --version")
  end
end
