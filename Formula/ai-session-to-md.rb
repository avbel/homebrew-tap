class AiSessionToMd < Formula
  desc "Summarize an AI coding-agent session into a Markdown handoff file"
  homepage "https://github.com/avbel/ai-session-to-md"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-macos-arm64.tar.xz"
      sha256 "082ca3cf8810851a93621e6ebbb6516412227449b318680bcc4d188cd74fbc2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-x64.tar.xz"
      sha256 "106ff380c75e8276b5dcde47e7c383aed90aab6f76558b4e23640d1a0e2e4dcc"
    end
    on_arm do
      url "https://github.com/avbel/ai-session-to-md/releases/download/v#{version}/ai-session-to-md-linux-arm64.tar.xz"
      sha256 "1949b34eae00ee272f58dd1ec2e14960d0d52cc0ee7504c8a3e0ae02ea9722f1"
    end
  end

  def install
    bin.install "ai-session-to-md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-session-to-md --version")
  end
end
