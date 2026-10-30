class Yrem < Formula
  desc "Remote-only CLI and MCP server for yantrikdb-server"
  homepage "https://github.com/avbel/yrem"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c6d30c67ad5b96971717284a4de8ef5e14db157b53fe083fd46284345a688379"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8a29afb153352a316cd15567b8e0df3a8af578d8af38f8a12bc39a50fca0135"
    end
    on_arm do
      url "https://github.com/avbel/yrem/releases/download/v#{version}/yrem-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43ae89e0bd8d72393bdf9aacfdc8b479d0058a8bf2f40387edae8b9aff33076e"
    end
  end

  def install
    bin.install "yrem"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yrem --version")
  end
end
