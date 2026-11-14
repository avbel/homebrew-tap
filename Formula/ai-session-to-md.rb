class AiSessionToMd < Formula
  desc "Summarize an AI coding-agent session into a Markdown handoff file"
  homepage "https://github.com/avbel/ai-session-to-md"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-macos-arm64.tar.xz"
      sha256 "fa23d7d673c5e30399766b2e1e37239511c662a66210fd98c269b78bc4f23b0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-x64.tar.xz"
      sha256 "43efaf2423a094ccff1ee59296bd230ef49a4e4112c19d587de78cbae4857c4a"
    end
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-arm64.tar.xz"
      sha256 "f4d057f319a317d631f5b42d41cd16139b64c91c58cfc3a3c72a87a73004591f"
    end
  end

  def install
    bin.install "ai-session-to-md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-session-to-md --version")
  end
end
