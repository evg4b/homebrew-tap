class AppleNotesMcp < Formula
  desc "Read and write Apple Notes from any MCP-compatible AI client"
  homepage "https://github.com/evg4b/apple-notes-mcp"
  version "0.2.0"
  license "MIT"

  on_arm do
    url "https://github.com/evg4b/apple-notes-mcp/releases/download/v#{version}/apple-notes-mcp-aarch64-apple-darwin"
    sha256 "39f2b40b6874a8f9d01fb5cdd1c6a08384acdb320e29da8a18bd6cd96a2082ca"
  end

  on_intel do
    url "https://github.com/evg4b/apple-notes-mcp/releases/download/v#{version}/apple-notes-mcp-x86_64-apple-darwin"
    sha256 "dcce246d2d052e20e735abb63836139270d1352d11bc9cc5e3e639481ad76b36"
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