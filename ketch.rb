class Ketch < Formula
  desc "Ketch CLI utility"
  homepage "https://ketch.sh"
  version "0.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ketch-com/ketch-cli/releases/download/v0.1.2/darwin-amd64.tgz"
    sha256 "a27f46765c6f84eb85183e886b5252ad3ecc970763ee1cfc40c452c575d95204"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ketch-com/ketch-cli/releases/download/v0.1.2/linux-amd64.tgz"
      sha256 "24b1613f6285537ac7e2db33a15c181f4e2ba2026a39a2c317d2ed955d566bb1"
    end
  end

  def install
    bin.install "ketch"
    #rm Dir["#{bin}/{ketch-completion.bash,ketch-completion.zsh}"]
    #system bin/"ketch", "completion", "--shell", "bash"
    #system bin/"ketch", "completion", "--shell", "zsh"
    #bash_completion.install "ketch-completion.bash"
    #zsh_completion.install "ketch-completion.zsh"
    #(zsh_completion/"_ketch").write <<~EOS
    #  #compdef ketch
    #  _ketch () {
    #    local e
    #    e=$(dirname ${funcsourcetrace[1]%:*})/ketch-completion.zsh
    #    if [[ -f $e ]]; then source $e; fi
    #  }
    #EOS
  end
end
