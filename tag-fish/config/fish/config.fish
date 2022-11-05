function fish_greeting
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end
scheme set tomorrow

set proxy_host 127.0.0.1:8889
set proxy_auth true

if test -f /home/allen/.autojump/share/autojump/autojump.fish; . /home/allen/.autojump/share/autojump/autojump.fish; end



set -x TexMan /usr/local/texlive/2022/texmf-dist/doc/man
set -x TexInfo /usr/local/texlive/2022/texmf-dist/doc/info
set -x TexLive /usr/local/texlive/2022/bin/x86_64-linux
set -x MANPATH /usr/local/man /usr/man /usr/share/man $MANPATH $TexMan
set -x INFOPATH $INFOPATH $TexInfo

set -x PATH /home/allen/.local/bin /home/allen/go/bin /home/allen/.local/share/gem/ruby/3.0.0/bin /opt/cuda/bin /home/allen/.cargo/bin /home/allen/.stack/programs/x86_64-linux/ghc-tinfo6-9.0.2/bin /home/allen/Android/Sdk/build-tools/30.0.3 $TexLive $PATH
set -x GOPATH /home/allen/go/
set -x GOPROXY "https://mirrors.aliyun.com/goproxy/"

set -x REPO_DIR "/home/allen/Workplace/sp21-s198"
set -x SNAPS_DIR "/home/allen/Workplace/snaps-sp21-s198"

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/allen/.ghcup/bin $PATH # ghcup-env

set -x CM_LAUNCHER rofi
set -x CM_DIR /home/allen/.tmp
set -x VAGRANT_DEFAULT_PROVIDER libvirt

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/allen/.miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
set fzf_fd_opts --hidden --exclude=.git
set fzf_preview_dir_cmd exa --all --color=always --icons

set -x RUSTUP_UPDATE_ROOT https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.tuna.tsinghua.edu.cn/rustup
