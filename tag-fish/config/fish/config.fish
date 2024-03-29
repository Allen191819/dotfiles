function fish_greeting
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end

set proxy_host 127.0.0.1:8889
set proxy_auth false

if test -f /home/allen/.autojump/share/autojump/autojump.fish; . /home/allen/.autojump/share/autojump/autojump.fish; end



set -x TexMan /usr/local/texlive/2022/texmf-dist/doc/man
set -x TexInfo /usr/local/texlive/2022/texmf-dist/doc/info
set -x TexLive /usr/local/texlive/2022/bin/x86_64-linux
set -x MANPATH /usr/local/man /usr/man /usr/share/man $MANPATH $TexMan
set -x INFOPATH $INFOPATH $TexInfo

set -x PATH /home/allen/.local/bin /home/allen/go/bin /home/allen/.local/share/gem/ruby/3.0.0/bin /opt/cuda/bin /home/allen/.cargo/bin /home/allen/Android/Sdk/build-tools/30.0.3 /home/allen/.npm-global/bin $TexLive $PATH
set -x GOPATH /home/allen/go/
set -x GOPROXY "https://mirrors.aliyun.com/goproxy/"


set -x CM_LAUNCHER rofi
set -x CM_DIR /home/allen/.tmp
set -x VAGRANT_DEFAULT_PROVIDER libvirt

set -x REPO_DIR /home/allen/Workplace/sp21-s198
set -x SNAPS_DIR /home/allen/Workplace/snaps-sp21-s198

set -x PICO_SDK_PATH /home/allen/Workplace/Raspberry_pi/pico-sdk
set -x PICO_TOOLCHAIN_PATH /home/allen/Workplace/Raspberry_pi/toolchain/gcc-arm-none-eabi-10.3-2021.10
set -x DEBUG_CODEIUM error
set -x TMUX_TMPDIR /home/allen/.cache/tmux/tmp
set -x EDITOR nvim
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/allen/.miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
set fzf_fd_opts --hidden --exclude=.git
set fzf_preview_dir_cmd exa --all --color=always --icons
set -gx EDITOR "nvim"
set fzf_dir_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
eval fzf_configure_bindings --processes=\e\cO


#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/allen/.ghcup/bin # ghcup-env

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/allen/.ghcup/bin # ghcup-env

# opam configuration
source /home/allen/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
scheme set dracula
