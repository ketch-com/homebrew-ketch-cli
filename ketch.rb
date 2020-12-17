class Ketch < Formula
  desc "Ketch CLI utility"
  homepage "https://ketch.sh"
  version "0.4.0"
  bottle :unneeded


  if OS.mac?
    url "https://github.com/ketch-com/ketch-cli/releases/download/v0.4.0/darwin-amd64.tgz"
    sha256 "4565de13d85088e4f41168b388cc8cc06aedd5e4c6d76ee0db15f994d44a977c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ketch-com/ketch-cli/releases/download/v0.4.0/linux-amd64.tgz"
      sha256 "946da68ff2522302c64e3375d256326943e8bd9c4b64c2a4abc2d9fb64a084e9"
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
