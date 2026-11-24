class Yrem < Formula
  desc "Remote-only CLI and MCP server for yantrikdb-server"
  homepage "https://github.com/avbel/yrem"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7aa74ff3a4bef119af50f346d8bac1c195234f93628c710cd4eb9f67e63de35c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1301bf8e7c4c836d435b9d8c21ae5c63f9cb373aaae1ba68356af803e0155bfc"
    end
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23d66d319d0761d24ce22437c9122a38e6163d125d439c09568810d8f3dd2082"
    end
  end

  def install
    bin.install "yrem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yrem --version")
  end
end
