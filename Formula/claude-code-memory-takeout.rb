class ClaudeCodeMemoryTakeout < Formula
  desc "Collect Claude Code project memory into one MEMORY.md"
  homepage "https://github.com/avbel/claude-code-memory-takeout"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/claude-code-memory-takeout/releases/download/v#{version}/claude-code-memory-takeout-macos-arm64.tar.xz"
      sha256 "eac3f49f136dc2b4a9c8eb6215d2dcc2464cef5b511519270e2a65b723ae918c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/claude-code-memory-takeout/releases/download/v#{version}/claude-code-memory-takeout-linux-x64.tar.xz"
      sha256 "eb24fc2e502f6d81846249717e9dfa8d202f845bd8c292f777e9d5f1dd34bc11"
    end
    on_arm do
      url "https://github.com/avbel/claude-code-memory-takeout/releases/download/v#{version}/claude-code-memory-takeout-linux-arm64.tar.xz"
      sha256 "f753c2689441f4a518ca4136ffec5e9f85b70268e67e54e9f79d2eba5194b66f"
    end
  end

  def install
    bin.install "claude-code-memory-takeout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-code-memory-takeout --version")
  end
end
