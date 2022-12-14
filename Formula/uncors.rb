# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Uncors < Formula
  desc "A simple dev HTTP/HTTPS reverse proxy for replacing CORS headers."
  homepage "https://github.com/evg4b/uncors"
  version "0.0.8-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8-beta/uncors_0.0.8-beta_darwin_amd64.tar.gz"
      sha256 "bbba1aafa678dd5b59a260912a5eea52c69e30ad6ac2a946a240442aa24dffc9"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8-beta/uncors_0.0.8-beta_darwin_arm64.tar.gz"
      sha256 "645d6a66f61dfdc0086ad879992e14916c6a106aa445925e6fc0cabaa20d887b"

      def install
        bin.install "uncors"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8-beta/uncors_0.0.8-beta_linux_armv6.tar.gz"
      sha256 "2e7eaddf1f3cd04a49e05f2781affde69303b45eaebe09642228134b2c57cbd1"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8-beta/uncors_0.0.8-beta_linux_amd64.tar.gz"
      sha256 "daa1c9f3b40e66de3ec4d20b0007647d08a4410e9214fef7f5f8cdcc4320a68a"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.8-beta/uncors_0.0.8-beta_linux_arm64.tar.gz"
      sha256 "f1a5b5734b4511b6de0c304a7e7b02a6c3cca173e6ae66faf066675438849cdb"

      def install
        bin.install "uncors"
      end
    end
  end

  test do
    system "#{bin}/uncors", "--help"
  end
end
