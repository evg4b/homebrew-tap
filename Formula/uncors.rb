# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uncors < Formula
  desc "A simple dev HTTP/HTTPS reverse proxy for replacing CORS headers."
  homepage "https://github.com/evg4b/uncors"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evg4b/uncors/releases/download/v0.5.0/uncors_0.5.0_darwin_amd64.tar.gz"
      sha256 "cb340fd68351d167687357cc0f26c41d58c3cf0163c81fccac6dad207ad515b7"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evg4b/uncors/releases/download/v0.5.0/uncors_0.5.0_darwin_arm64.tar.gz"
      sha256 "f71d3f1538017adbfad8bd5ce32cb686563b6823a8d99adb7741b7f59416d0ba"

      def install
        bin.install "uncors"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evg4b/uncors/releases/download/v0.5.0/uncors_0.5.0_linux_amd64.tar.gz"
        sha256 "2488eb8798ddc740eed5692b9cb181570e19f24f549d13ee86d09e5056eb890c"

        def install
          bin.install "uncors"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/evg4b/uncors/releases/download/v0.5.0/uncors_0.5.0_linux_armv6.tar.gz"
        sha256 "10b9a8b2d2bb54467b3a2179344fbd9bdeab4735ec64a28876208f16ab2f205c"

        def install
          bin.install "uncors"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/evg4b/uncors/releases/download/v0.5.0/uncors_0.5.0_linux_arm64.tar.gz"
        sha256 "b7d3c0eedad92904eb25b3f4cf3388bbd22e66f5ee8ad9efc825df306ce8db41"

        def install
          bin.install "uncors"
        end
      end
    end
  end

  test do
    system "#{bin}/uncors", "--help"
  end
end
