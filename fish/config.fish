if not set -q TMUX
  exec tmux
end

set SPACEFISH_EXIT_CODE_SHOW true
set SPACEFISH_DOCKER_SHOW false
set SPACEFISH_RUBY_SHOW false
set SPACEFISH_CONDA_SHOW false
set SPACEFISH_GOLANG_SHOW false
set SPACEFISH_NODE_SHOW false
set SPACEFISH_KUBECONTEXT_SHOW false

set -x GOPATH "$HOME/go"
set -xa PATH "$HOME/bin" "$HOME/go/bin" "$HOME/.cargo/bin" "$HOME/.pyenv/bin" "$HOME/.local/bin/" "$HOME/projects/toolchains/xtensa-esp32-elf/bin"

set -x ZEPHYR_SDK_INSTALL_DIR "$HOME/projects/zephyr-sdk"
set -x ZEPHYR_TOOLCHAIN_VARIANT "zephyr"

source (pyenv init - | psub)
source (pyenv virtualenv-init - | psub)

alias vi="nvim"
alias vim="nvim"
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

