# typed: false
# frozen_string_literal: true

class Uncors < Formula
  desc "A simple dev HTTP/HTTPS proxy for replacing CORS headers."
  homepage "https://github.com/evg4b/uncors"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.2/uncors_0.0.2_darwin_amd64.tar.gz"
      sha256 "ea9201fcfac274b79cd0a80199063c5f64d5fd932425cc1682b1940dc81fb7e0"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.2/uncors_0.0.2_darwin_arm64.tar.gz"
      sha256 "f2e97aac845f1710d12aa30104b61c743f4e1cecd188fc0c2871ba41ff87d7a9"

      def install
        bin.install "uncors"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.2/uncors_0.0.2_linux_amd64.tar.gz"
      sha256 "04401ec3d0d88faf96cfd0ab44d31c1008ae409af127389f18419c014a0f7aa7"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.2/uncors_0.0.2_linux_386.tar.gz"
      sha256 "be4118f2d0cfbcdb0a99c273f9ecbec1077c50b52a589539bb60e632a75a3863"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.2/uncors_0.0.2_linux_arm64.tar.gz"
      sha256 "b2a40978b3869eb9f1a1a53811d8a30876599ff956d5cd651b8c1ad8c09c32f4"

      def install
        bin.install "uncors"
      end
    end
  end

  test do
    system "#{bin}/uncors", "--help"
  end
end