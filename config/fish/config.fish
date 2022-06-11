function fish_mode_prompt; end

# turn on vi mode when the shell starts
fish_vi_key_bindings
fzf_key_bindings

set PATH /home/pk/.nvm/versions/node/v16.14.2/bin/ $PATH
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
