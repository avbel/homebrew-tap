class Yrem < Formula
  desc "Remote-only CLI and MCP server for yantrikdb-server"
  homepage "https://github.com/avbel/yrem"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6f0f50924af8d20984b24aa0353f68a417d88f8b02b11ec59a097fdd2dc69c15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe19679f39a79690fc51dbee3dbe821ef58428839c3bb2fb5c64bb05b6e66f4c"
    end
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a190c4621c0446aadb83f3d70b00f7035daa034d844417ecd00e08b7e870beb6"
    end
  end

  def install
    bin.install "yrem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yrem --version")
  end
end
