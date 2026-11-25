class Vaultkeeper < Formula
  desc "Bitwarden-compatible password manager for the desktop"
  homepage "https://github.com/avbel/vaultkeeper"
  version "0.1.17"
  license "GPL-3.0-only"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/avbel/vaultkeeper/releases/download/v#{version}/vaultkeeper-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e52ab920f52e1c7a5dc4ab24566da35d5a907da28126c334e6ed75be9f1ea61"
    end
    on_arm do
      url "https://github.com/avbel/vaultkeeper/releases/download/v#{version}/vaultkeeper-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2573bb6e124d2d12a320cd46e63ca620aaa9da3481273ff5f291ff2217e365c"
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
