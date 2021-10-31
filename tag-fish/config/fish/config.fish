
function fish_greeting
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end
scheme set tomorrow

set proxy_host 127.0.0.1:8889
set proxy_auth true
set proxy_user allen

if test -f /home/allen/.autojump/share/autojump/autojump.fish; . /home/allen/.autojump/share/autojump/autojump.fish; end
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/allen/.miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set TexMan /usr/local/texlive/2021/texmf-dist/doc/man
set TexInfo /usr/local/texlive/2021/texmf-dist/doc/info
set TexLive /usr/local/texlive/2021/bin/x86_64-linux
set MANPATH /usr/local/man /usr/man /usr/share/man $MANPATH $TexMan
set INFOPATH $INFOPATH $TexInfo

set PATH /home/allen/.local/bin /home/allen/go/bin /home/allen/.local/share/gem/ruby/3.0.0/bin /opt/cuda/bin $TexLive $PATH
set GOPATH /home/allen/go/
set GOPROXY "https://mirrors.aliyun.com/goproxy/"


set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/allen/.ghcup/bin $PATH # ghcup-env
