function fish_greeting
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end
scheme set tomorrow

set proxy_host 127.0.0.1:8889
set proxy_auth false

if test -f /home/allen/.autojump/share/autojump/autojump.fish; . /home/allen/.autojump/share/autojump/autojump.fish; end



set -x TexMan /usr/local/texlive/2022/texmf-dist/doc/man
set -x TexInfo /usr/local/texlive/2022/texmf-dist/doc/info
set -x TexLive /usr/local/texlive/2022/bin/x86_64-linux
set -x MANPATH /usr/local/man /usr/man /usr/share/man $MANPATH $TexMan
set -x INFOPATH $INFOPATH $TexInfo

set -x PATH /home/allen/.local/bin /home/allen/go/bin /home/allen/.local/share/gem/ruby/3.0.0/bin /opt/cuda/bin /home/allen/.cargo/bin /home/allen/Android/Sdk/build-tools/30.0.3 /home/allen/.npm-global $TexLive $PATH
set -x GOPATH /home/allen/go/
set -x GOPROXY "https://mirrors.aliyun.com/goproxy/"

set -x REPO_DIR "/home/allen/Workplace/sp21-s198"
set -x SNAPS_DIR "/home/allen/Workplace/snaps-sp21-s198"

set -x CM_LAUNCHER rofi
set -x CM_DIR /home/allen/.tmp
set -x VAGRANT_DEFAULT_PROVIDER libvirt

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/allen/.miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#
set -gx EDITOR "nvim"
set fzf_fd_opts --hidden --exclude=.git
set fzf_preview_dir_cmd exa --all --color=always --icons
set fzf_dir_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"

set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/allen/.ghcup/bin # ghcup-env

set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

set -x CM_LAUNCHER dmenu

# opam configuration
source /home/allen/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
scheme set dracula
