class AiSessionToMd < Formula
  desc "Summarize an AI coding-agent session into a Markdown handoff file"
  homepage "https://github.com/avbel/ai-session-to-md"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-macos-arm64.tar.xz"
      sha256 "de0f7abd5baaac6fbb4673b56d311bdb7bf784d519d6e9c19a41b397b0c6c5b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-x64.tar.xz"
      sha256 "ee0405fe5aab5f03b956ec9a4acf75a98813ca40324997acac0524b101a9c0ff"
    end
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-arm64.tar.xz"
      sha256 "16bdc469bd15c4a32c85ae66614ca394a405f1d6bd6b4ae0bf5f38f94b6c461a"
    end
  end

  def install
    bin.install "ai-session-to-md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-session-to-md --version")
  end
end
