# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UpsunCli < Formula
  desc "Upsun CLI"
  homepage "https://docs.deployfriday.net/administration/cli.html"
  version "5.0.18"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/5.0.18/upsun_5.0.18_darwin_all.tar.gz"
    sha256 "6a302eb3920e68cdf79e9c15e092ff7dc2f9770cd0b208eb94f69959d27e36d7"

    def install
      bin.install "upsun"
      generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.18/upsun_5.0.18_linux_amd64.tar.gz"
        sha256 "e3a11ee02de7ccb210b71121b8552b14d12c994da34563319f3d2149f1852d1e"

        def install
          bin.install "upsun"
          generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.18/upsun_5.0.18_linux_arm64.tar.gz"
        sha256 "db112c5b2d86253ceb6ec5b82ae27ce3635a4c5458ed571c229daeb6282238ed"

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
