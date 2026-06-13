class Move2ts < Formula
  desc "Generate type-safe TypeScript wrappers for Sui Move smart contracts"
  homepage "https://github.com/avbel/move2ts"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-macos-arm64.zip"
      sha256 "2bad919c15f09927dce7ee8a32a5456107bb096389ecd5358da8521f66f20508"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-x64.tar.gz"
      sha256 "b398db70129f8cc8a4d4e6492172d1f6eec8043525a056ba7f11b72472c75899"
    end
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-arm64.tar.gz"
      sha256 "9135b2f7013a9acdee5a8f03984ab60003231b0c4de71bcd8783615163198681"
    end
  end

  def install
    bin.install "move2ts"
  end

  test do
    assert_match "Generate TypeScript wrappers", shell_output("#{bin}/move2ts --help")
  end
end
