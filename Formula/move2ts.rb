class Move2ts < Formula
  desc "Generate type-safe TypeScript wrappers for Sui Move smart contracts"
  homepage "https://github.com/avbel/move2ts"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-macos-arm64.zip"
      sha256 "d33361e49b54ea8a4094dc5d3ad9b8c726ef5b4212706f65fc3c2efce5c86c0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-x64.tar.gz"
      sha256 "c83fd696c9533acf54c38d847edf54152e6f7cb7c21bca9bd5d45e60d80fdd31"
    end
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-arm64.tar.gz"
      sha256 "81d383cec6a910f656cce7b175036e6538692ecbfe5a1e94f44212c958e42d9d"
    end
  end

  def install
    bin.install "move2ts"
  end

  test do
    assert_match "Generate TypeScript wrappers", shell_output("#{bin}/move2ts --help")
  end
end
