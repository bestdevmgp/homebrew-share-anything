class ShareAnything < Formula
  desc "CLI for Share Anything - fast file sharing from the terminal"
  homepage "https://github.com/bestdevmgp/share-anything-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/sany-macos-aarch64"
      sha256 "c915a317aa97d7c8d15055b90942c9f7a902b3f901c4729b107aa10759950597"

      def install
        bin.install "sany-macos-aarch64" => "sany"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/sany-macos-x86_64"
      sha256 "db302c6e1c5f56cd0ae3a44583641c6b4f11131088ce7703f7d7787b6c408a8b"

      def install
        bin.install "sany-macos-x86_64" => "sany"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/sany-linux-aarch64"
      sha256 "79328cafcd1de683c95b2400b6dae604b00910dea6bec30659bff2eaf245bc27"

      def install
        bin.install "sany-linux-aarch64" => "sany"
      end
    else
      url "https://github.com/bestdevmgp/share-anything-cli/releases/download/v#{version}/sany-linux-x86_64"
      sha256 "2d04bd73668c3c70ba8e9e5b459afc7cd5f90ecb9a7b3830aca54a17ce195e8d"

      def install
        bin.install "sany-linux-x86_64" => "sany"
      end
    end
  end

  test do
    assert_match "sany", shell_output("#{bin}/sany --version")
  end
end
