class Ketch < Formula
  desc "Ketch CLI utility"
  homepage "https://ketch.sh"
  version "0.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ketch-com/ketch-cli/releases/download/v0.1.4/darwin-amd64.tgz"
    sha256 "f0b3c4406c8a6cffb65b3379d5731b3eaec88e73b2ee2fc7e3a394b217f677b5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ketch-com/ketch-cli/releases/download/v0.1.4/linux-amd64.tgz"
      sha256 "cc9c9340943bd24c1fe78aab608b3e2186eb12c5a2cdbcb2b5ab840ddd58cc81"
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
