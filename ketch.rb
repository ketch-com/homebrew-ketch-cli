class Ketch < Formula
  desc "Ketch CLI utility"
  homepage "https://ketch.com"
  version "0.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ketch/ketch-cli/releases/download/v0.0.0/ketch_0.0.0_mac-os_x86_64.tar.gz"
    sha256 "726d5aaa0fe45c8dd8481ad0fff4c8317c03b78ddffa9c1f8e0caa7b17e74bc9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ketch/ketch-cli/releases/download/v0.0.0/ketch_0.0.0_linux_x86_64.tar.gz"
      sha256 "b54d581584e6d7c328663052f40dcd2a991fdb35d3c397a40f59e78f4edd70e2"
    end
  end

  def install
    bin.install "ketch"
    rm Dir["#{bin}/{ketch-completion.bash,ketch-completion.zsh}"]
    system bin/"ketch", "completion", "--shell", "bash"
    system bin/"ketch", "completion", "--shell", "zsh"
    bash_completion.install "ketch-completion.bash"
    zsh_completion.install "ketch-completion.zsh"
    (zsh_completion/"_ketch").write <<~EOS
      #compdef ketch
      _ketch () {
        local e
        e=$(dirname ${funcsourcetrace[1]%:*})/ketch-completion.zsh
        if [[ -f $e ]]; then source $e; fi
      }
    EOS
  end
end
