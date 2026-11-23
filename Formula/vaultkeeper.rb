class Vaultkeeper < Formula
  desc "Bitwarden-compatible password manager for the desktop"
  homepage "https://github.com/avbel/vaultkeeper"
  version "0.1.16"
  license "GPL-3.0-only"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/avbel/vaultkeeper/releases/download/v#{version}/vaultkeeper-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69559515a85df45a5f0a5eceaf2598c77ca9f91511df019ed2944dc87db4aeb9"
    end
    on_arm do
      url "https://github.com/avbel/vaultkeeper/releases/download/v#{version}/vaultkeeper-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2471ba43c1aaebcc95963c8f7c66f7cbb63c7027cacf550472f525eff3367f26"
    end
  end

  def install
    bin.install "bin/vaultkeeper"
    (share/"vaultkeeper").install Dir["share/vaultkeeper/*"]
  end

  def caveats
    <<~EOS
      Vaultkeeper writes its launcher entry on first start; run `vaultkeeper` once.
      It links the desktop's own libraries; install them if they are missing:
        Ubuntu: sudo apt install libxkbcommon0 libwayland-client0 libegl1 libfontconfig1 libudev1
        Fedora: sudo dnf install libxkbcommon libwayland-client mesa-libEGL fontconfig systemd-libs
      "Start at login" is in Vaultkeeper's Settings; there is no `brew services` entry.
      Updates come from `brew upgrade vaultkeeper`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vaultkeeper --version")
  end
end
