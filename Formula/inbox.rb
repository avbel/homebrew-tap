class Inbox < Formula
  desc "Run commands in a sandboxed filesystem environment"
  homepage "https://github.com/avbel/inbox"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-macos-arm64.zip"
      sha256 "2a990599baad2ed278847fa57e5b7593ca75cb2af2ca157d6fbc76d39153d2c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-linux-x64.tar.gz"
      sha256 "cc87ff57d38ff5dc65c5ac2ea606241000b0ed3034ee5dae62f97ed2f4e4b70c"
    end
    on_arm do
      url "https://github.com/avbel/inbox/releases/download/v#{version}/inbox-linux-arm64.tar.gz"
      sha256 "70d21b8d8ab3f8ae9ae4676ae94e7578dd9fc919d3c08f24e8eec1e4dad2702f"
    end
  end

  def install
    bin.install "inbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inbox --version")
  end
end
