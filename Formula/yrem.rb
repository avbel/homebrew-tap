class Yrem < Formula
  desc "Remote-only CLI and MCP server for yantrikdb-server"
  homepage "https://github.com/avbel/yrem"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fd1612423a039ae9031b7f281b4e8c0226a8d90f5ca30e8a491c08771ca5c6dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "beec73846f5e6afe896c7b7e38f3e02aee738d3cdb24c3549c703336c200e3de"
    end
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0571bc783397ec58ee2ae62eae0106dde14a6ab42e9657654ebea0433abd9873"
    end
  end

  def install
    bin.install "yrem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yrem --version")
  end
end
