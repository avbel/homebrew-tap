class Vaultkeeper < Formula
  desc "Bitwarden-compatible password manager for the desktop"
  homepage "https://github.com/avbel/vaultkeeper"
  version "0.1.18"
  license "GPL-3.0-only"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/avbel/vaultkeeper/releases/download/v#{version}/vaultkeeper-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8adf5f16b00de42bb33d640e9da7f23298341576ef29e49bcda54a239937a666"
    end
    on_arm do
      url "https://github.com/avbel/vaultkeeper/releases/download/v#{version}/vaultkeeper-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df72b6f6bbcd880cb6fdbf02967f71d7f99d7f2f2db7677a15cb4c60faa0f680"
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
