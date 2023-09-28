# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PlatformshCli < Formula
  desc "Platform.sh CLI"
  homepage "https://docs.platform.sh/administration/cli.html"
  version "4.10.3"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/4.10.3/platform_4.10.3_darwin_all.tar.gz"
    sha256 "31585830cec4fc6630aef5d39e2ddd02745903dd6be75a829b689c6e7f0a82ca"

    def install
      bin.install "platform"
      generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/cli/releases/download/4.10.3/platform_4.10.3_linux_arm64.tar.gz"
      sha256 "f0251180bab1d3bd5c210a3ae096bf3b3c0804d8af124e0fdd81176253c3da61"

      def install
        bin.install "platform"
        generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/cli/releases/download/4.10.3/platform_4.10.3_linux_amd64.tar.gz"
      sha256 "b71440371a3f8c9ed01edf52078bb9818c9bf9f22e30110b5ff89fb0cb0d8251"

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
