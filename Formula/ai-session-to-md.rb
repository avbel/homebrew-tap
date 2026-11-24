class AiSessionToMd < Formula
  desc "Summarize an AI coding-agent session into a Markdown handoff file"
  homepage "https://github.com/avbel/ai-session-to-md"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-macos-arm64.tar.xz"
      sha256 "3627faf1403d46c4582705dec0f75eddfd1dff252260fb6c9e5aa27a6fa226d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-x64.tar.xz"
      sha256 "23f345c4da2c3dbaf448ab0445aa9aa058b32d6a47b2719a826c643dbaa87d8d"
    end
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-arm64.tar.xz"
      sha256 "8c8428fa971f6a5c7e2092de18c1e3d2c157f3a9fc546255c68c51a3b5352d3c"
    end
  end

  def install
    bin.install "ai-session-to-md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-session-to-md --version")
  end
end
