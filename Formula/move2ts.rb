class Move2ts < Formula
  desc "Generate type-safe TypeScript wrappers for Sui Move smart contracts"
  homepage "https://github.com/avbel/move2ts"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-macos-arm64.zip"
      sha256 "8169e66487e81dd201bc1eb60901731bd91a1787ab479fc18e29ed176cd581cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-x64.tar.gz"
      sha256 "0883c122d9c860669b9949b1ac60ead25ea6950e6f0790893edafd0ff98690a7"
    end
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-arm64.tar.gz"
      sha256 "51bd39015a5b766398f5eeff56aef9f3b382f7b2c52e7cea00e5a7938219baec"
    end
  end

  def install
    bin.install "move2ts"
  end

  test do
    assert_match "Generate TypeScript wrappers", shell_output("#{bin}/move2ts --help")
  end
end
