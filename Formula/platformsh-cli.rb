# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PlatformshCli < Formula
  desc "Platform.sh CLI"
  homepage "https://docs.platform.sh/administration/cli.html"
  version "4.2.0"
  license "MIT"

  depends_on "git" => :optional
  depends_on "oniguruma"
  depends_on "openssl@1.1"

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/4.2.0/platform_4.2.0_darwin_all.tar.gz"
    sha256 "d8d5815e29547e9cfe3d9b52e8c0bfa718ba30b5736a9a145b1e8d09a90050aa"

    def install
      bin.install "platform"
      generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/cli/releases/download/4.2.0/platform_4.2.0_linux_arm64.tar.gz"
      sha256 "66177302f32d26e7c4ffd6798a5c57b2b2eac7d8a3bb706de64e2da1a0410c11"

      def install
        bin.install "platform"
        generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/cli/releases/download/4.2.0/platform_4.2.0_linux_amd64.tar.gz"
      sha256 "6c970ed3f1c56ae96586278957bd99117b843283a0f1e3d5ae228a0a9c26679b"

      def install
        bin.install "platform"
        generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
      end
    end
  end

  test do
    system "#{bin}/platform --version"
  end
end
