if not set -q TMUX
  exec tmux
end

set SPACEFISH_DOCKER_SHOW false
set SPACEFISH_RUBY_SHOW false
set SPACEFISH_CONDA_SHOW false
set SPACEFISH_GOLANG_SHOW false
set SPACEFISH_NODE_SHOW false

set -x GOPATH "$HOME/go"
set -xa PATH "$HOME/bin" "$HOME/go/bin"

alias vi="nvim"
alias vim="nvim"
alias l="ls -al"
