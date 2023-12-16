function fish_mode_prompt; end

# turn on vi mode when the shell starts
fish_vi_key_bindings
fzf_key_bindings

set node_version (ls -d /home/pk/.nvm/versions/node/v*/ | tail -n 1)
set PATH $node_version/bin $PATH
set PATH /home/pk/.cargo/bin $PATH
set PATH /usr/local/go/bin $PATH
set GOPATH /usr/local/go $GOPATH

# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one underscore
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# android bs
set -x ANDROID_HOME /usr/share/android
set -x PATH $PATH:$ANDROID_HOME/cmdline-tools/latest/bin

# go bin
set -U fish_user_paths $fish_user_paths (go env GOPATH)/bin

# zoxide | should stay at the end
zoxide init fish | source
