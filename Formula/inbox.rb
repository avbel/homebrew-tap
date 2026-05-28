class Inbox < Formula
  desc "Run commands in a sandboxed filesystem environment"
  homepage "https://github.com/avbel/inbox"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-macos-arm64.zip"
      sha256 "8becdf4249981b1c8f94706cd9760e9f8b5e9fecfe77f45fa95b3c23be5c6c43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-linux-x64.tar.gz"
      sha256 "36c154061aa06f2ac84100101e1deb4b39294d08c723fb0e9360f430581bb8f7"
    end
    on_arm do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-linux-arm64.tar.gz"
      sha256 "ee349eea079f6191d37642f03150743b83306f04f7f00e9198aaed45db63aa7f"
    end
  end

  def install
    bin.install "inbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inbox --version")
  end
end
