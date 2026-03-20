class ShareAnything < Formula
  desc "CLI for Share Anything - Fast file sharing from the terminal"
  homepage "https://github.com/bestdevmgp/share-anything-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-aarch64"
      sha256 "abdd08eaa63be0114cbef860c2cb14240d32a2eb645e8228268413551854ad87"

      def install
        bin.install "share-macos-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-macos-x86_64"
      sha256 "2a8d8963c6b39c614cab42c894a955d2e81a81229d5752d317346830c170920b"

      def install
        bin.install "share-macos-x86_64" => "share"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-aarch64"
      sha256 "13ae7bef520201d69905da6594202ead1eaaab8883c7c4d3a742f75d7dc0cd8a"

      def install
        bin.install "share-linux-aarch64" => "share"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/share-linux-x86_64"
      sha256 "de36156e3575adc0c8c64d11c42eb4f20bbe90408d62d244abb9d4127976f064"

      def install
        bin.install "share-linux-x86_64" => "share"
      end
    end
  end

  test do
    assert_match "share", shell_output("#{bin}/share --version")
  end
end
