class Move2ts < Formula
  desc "Generate type-safe TypeScript wrappers for Sui Move smart contracts"
  homepage "https://github.com/avbel/move2ts"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-macos-arm64.zip"
      sha256 "33065d60bb58a045a1305e36eeb6a2223d37df131c3b1341ff5af164624c8182"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-x64.tar.gz"
      sha256 "f0a21a5522c833ccc15d768166a803940bca90206bdaad4ef2d8e58509b82dc7"
    end
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-arm64.tar.gz"
      sha256 "fc3f60c60f457cb5030f8d364e3b990b91c2a3cd0b56a798d6f4c60a4fb839a1"
    end
  end

  def install
    bin.install "move2ts"
  end

  test do
    assert_match "Generate TypeScript wrappers", shell_output("#{bin}/move2ts --help")
  end
end
