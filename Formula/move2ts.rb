class Move2ts < Formula
  desc "Generate type-safe TypeScript wrappers for Sui Move smart contracts"
  homepage "https://github.com/avbel/move2ts"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-macos-arm64.zip"
      sha256 "48196edc8544ba2482330c98291afa097c9a58efee04231538c993d232843553"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-x64.tar.gz"
      sha256 "af8080335eda4deae987943bd99a16b1c5a5cd19db727526baacc39ac9707d9f"
    end
    on_arm do
      url "https://github.com/avbel/move2ts/releases/download/v#{version}/move2ts-linux-arm64.tar.gz"
      sha256 "062a3e729a815db77c5dc4408c902bac354a70c21510a764832a605869850265"
    end
  end

  def install
    bin.install "move2ts"
  end

  test do
    assert_match "Generate TypeScript wrappers", shell_output("#{bin}/move2ts --help")
  end
end
