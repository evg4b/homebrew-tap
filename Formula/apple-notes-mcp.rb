class AppleNotesMcp < Formula
  desc "Read and write Apple Notes from any MCP-compatible AI client"
  homepage "https://github.com/evg4b/apple-notes-mcp"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/evg4b/apple-notes-mcp/releases/download/v#{version}/apple-notes-mcp-aarch64-apple-darwin"
    sha256 "d3039499aaa0018f662e585c3b3efd0c0607fdcbb2a7cc6099edc62a1c609bb3"
  end

  on_intel do
    url "https://github.com/evg4b/apple-notes-mcp/releases/download/v#{version}/apple-notes-mcp-x86_64-apple-darwin"
    sha256 "c7d3373f3e6fc57824f199aa0c9f2d17828a19b16460b8bdffd68e73b6b351b2"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "apple-notes-mcp-aarch64-apple-darwin" => "apple-notes-mcp"
    else
      bin.install "apple-notes-mcp-x86_64-apple-darwin" => "apple-notes-mcp"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-notes-mcp --version")
  end
end