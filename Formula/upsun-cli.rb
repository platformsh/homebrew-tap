# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UpsunCli < Formula
  desc "Upsun CLI"
  homepage "https://docs.deployfriday.net/administration/cli.html"
  version "5.0.23"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/5.0.23/upsun_5.0.23_darwin_all.tar.gz"
    sha256 "e9b9e76bef1c0ee679f771536c41ba206031a6e1ff8550a3083649824077a91c"

    def install
      bin.install "upsun"
      generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.23/upsun_5.0.23_linux_amd64.tar.gz"
        sha256 "cb19fdafdf265040427e777482498429b84f7e71e2471344b038b7913241a3a9"

        def install
          bin.install "upsun"
          generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/platformsh/cli/releases/download/5.0.23/upsun_5.0.23_linux_arm64.tar.gz"
        sha256 "86be175c4b7f98ae07b15d56a79a2a89e42cde041c032ec014d00268a03ac260"

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
