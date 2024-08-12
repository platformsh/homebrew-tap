# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PlatformshCli < Formula
  desc "Platform.sh CLI"
  homepage "https://docs.platform.sh/administration/cli.html"
  version "5.0.19"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/5.0.19/platform_5.0.19_darwin_all.tar.gz"
    sha256 "3c695de20bd49c1e48fbebcf4231055a9ed7468c22e1f45f2cbeb04b37726806"

    def install
      bin.install "platform"
      generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.19/platform_5.0.19_linux_amd64.tar.gz"
        sha256 "52dc8dff452896884856daf119c2a278765fa110c9863440a6af8c9b8e0b8d2a"

        def install
          bin.install "platform"
          generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.19/platform_5.0.19_linux_arm64.tar.gz"
        sha256 "ba930437f737871b8596871e942d615ff3626b4d897a0dfe5563ec038f248e1b"

        def install
          bin.install "platform"
          generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end

  test do
    system "#{bin}/platform --version"
  end
end
