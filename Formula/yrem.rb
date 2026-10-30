class Yrem < Formula
  desc "Remote-only CLI and MCP server for yantrikdb-server"
  homepage "https://github.com/avbel/yrem"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "923c6a080d2ee4d38347d6f96fd7431a32a7110e5e41973054361391cdefd23c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7384c38ec25cd4a04236f80c07a9351a2efed7fbbfdb3316c1577875e1bbe76"
    end
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "819ce6264e227837442da9a0459828b4b23cf976db7ec0678f847fbdad642e94"
    end
  end

  def install
    bin.install "yrem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yrem --version")
  end
end
