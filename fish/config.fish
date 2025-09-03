alias npm "bun"

# PATH
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set -x PATH $PATH (go env GOPATH)/bin
set -gx fish_user_paths $HOME/.local/bin $fish_user_paths


zoxide init fish | source
