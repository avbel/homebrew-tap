class ClaudeCodeMemoryTakeout < Formula
  desc "Collect Claude Code project memory into one MEMORY.md"
  homepage "https://github.com/avbel/claude-code-memory-takeout"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/claude-code-memory-takeout/releases/download/v#{version}/claude-code-memory-takeout-macos-arm64.tar.xz"
      sha256 "de531cd54d2cf128d7ca2bc1c0079146e8b9c2287d58bb19370b4277d9690e25"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/claude-code-memory-takeout/releases/download/v#{version}/claude-code-memory-takeout-linux-x64.tar.xz"
      sha256 "fc6b90a85875700331541835add3e493bb1d2112d45d8e0ad8c601ad3603053f"
    end
    on_arm do
      url "https://github.com/avbel/claude-code-memory-takeout/releases/download/v#{version}/claude-code-memory-takeout-linux-arm64.tar.xz"
      sha256 "0dacb62e394434a084ab563d43c5442d825f0f91186d6bcaec06ef1d18c03e27"
    end
  end

  def install
    bin.install "claude-code-memory-takeout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-code-memory-takeout --version")
  end
end
