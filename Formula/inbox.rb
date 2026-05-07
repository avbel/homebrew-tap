class Inbox < Formula
  desc "Run commands in a sandboxed filesystem environment"
  homepage "https://github.com/avbel/inbox"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-macos-arm64.zip"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "inbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inbox --version")
  end
end
