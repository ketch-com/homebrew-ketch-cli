class Ketch < Formula
  desc "Ketch CLI utility"
  homepage "https://ketch.sh"
  version "0.4.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ketch-com/ketch-cli/releases/download/v0.4.5/darwin-amd64.tgz"
    sha256 "eabbe61f15ba99eb70145c344c3ee3fb484942f01d58be81ea6f327642a487a1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ketch-com/ketch-cli/releases/download/v0.4.5/linux-amd64.tgz"
      sha256 "40fe7f215161d42a5a7a3b62bd0c560681fae812f874a8147e5e7b2ec90c9d6a"
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
