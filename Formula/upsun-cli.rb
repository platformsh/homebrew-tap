# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UpsunCli < Formula
  desc "Upsun CLI"
  homepage "https://docs.deployfriday.net/administration/cli.html"
  version "5.0.12"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/5.0.12/upsun_5.0.12_darwin_all.tar.gz"
    sha256 "4704cc270be4b97fe89074b2c73a6f683eae0fc7e17956ebedb8010b678c40ea"

    def install
      bin.install "upsun"
      generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/cli/releases/download/5.0.12/upsun_5.0.12_linux_arm64.tar.gz"
      sha256 "66b692fcfa923cbfe4723e68ea1cc374bef4215d885973a66ba3870a25c80d07"

      def install
        bin.install "upsun"
        generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/cli/releases/download/5.0.12/upsun_5.0.12_linux_amd64.tar.gz"
      sha256 "b2f10f31563bafba40a17c0520c62a08476ea91dcd92871a82e7f69c81adf86f"

      def install
        bin.install "upsun"
        generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
      end
    end
  end

  test do
    system "#{bin}/upsun --version"
  end
end
