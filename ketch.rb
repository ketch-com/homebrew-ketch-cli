class Ketch < Formula
  desc "Ketch CLI utility"
  homepage "https://ketch.sh"
  version "0.3.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ketch-com/ketch-cli/releases/download/v0.3.2/darwin-amd64.tgz"
    sha256 "ad365e5d83fc4fa7f53ccd45d025d26db3f5a552213f7ed0b257ffde974f182c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ketch-com/ketch-cli/releases/download/v0.3.2/linux-amd64.tgz"
      sha256 "7208ec77456b0db3c0e8bccaff40f4e68c8784c469920a17737b38725bd7f55b"
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
