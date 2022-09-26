# typed: false
# frozen_string_literal: true

class Uncors < Formula
  desc "A simple dev HTTP/HTTPS proxy for replacing CORS headers."
  homepage "https://github.com/evg4b/uncors"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.1/uncors_0.0.1_darwin_amd64.tar.gz"
      sha256 "a78f8125be021664a2b98641f3c0c7aef82d3de4265d4d46198a850d9d4b42a6"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.1/uncors_0.0.1_darwin_arm64.tar.gz"
      sha256 "8932033b083b7735a32c234fdc15b0a596d740846bac75509129a487d9480e52"

      def install
        bin.install "uncors"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.1/uncors_0.0.1_linux_amd64.tar.gz"
      sha256 "13fd8a0e5d000e5727381e8349fd10fac8250b2c33af9b28fd6a1ce1b8769e57"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.1/uncors_0.0.1_linux_386.tar.gz"
      sha256 "5f402b8f1e5db0a375bf9e59a7f215263c251e5919f57cf850d3ca9e9b8f04e7"

      def install
        bin.install "uncors"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/evg4b/uncors/releases/download/v0.0.1/uncors_0.0.1_linux_arm64.tar.gz"
      sha256 "d6bc7d094730d5216ccb77adf32f2def7e8454d35f039dbfc1cf5d5b5ca4a4fe"

      def install
        bin.install "uncors"
      end
    end
  end

  test do
    system "#{bin}/uncors", "--help"
  end
end