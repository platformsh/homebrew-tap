# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UpsunCli < Formula
  desc "Upsun CLI"
  homepage "https://docs.deployfriday.net/administration/cli.html"
  version "5.0.16"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/5.0.16/upsun_5.0.16_darwin_all.tar.gz"
    sha256 "542e5381ffd2678489136ea03e37e8cf1a8c1335ad1251e2b20e3f6587cc39b0"

    def install
      bin.install "upsun"
      generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.16/upsun_5.0.16_linux_amd64.tar.gz"
        sha256 "2f4107d543e62b41a6eaeefb6bbff944cfe90242c6d414d78a964a0b6280dc13"

        def install
          bin.install "upsun"
          generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.16/upsun_5.0.16_linux_arm64.tar.gz"
        sha256 "1b27ebb09d36813a027876dce10631e3c6915077cd46acc55d8bb2efc7b105c6"

        def install
          bin.install "upsun"
          generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end

  test do
    system "#{bin}/upsun --version"
  end
end
