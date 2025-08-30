# Neovim Config

Minimal, opinionated Neovim setup built with [lazy.nvim](https://github.com/folke/lazy.nvim).

---

## Requirements

- Neovim ≥ 0.10
- Nerd Font (for icons)
- `xclip` for system clipboard on Linux
- `cmake` to build `telescope-fzf-native`

---

## Keybinds

| Key           | HRV              | Description                                 |
| ------------- | ---------------- | ------------------------------------------- |
| `jk`          | j k              | Exit insert mode                            |
| `<leader>`    | Space            | Leader key                                  |
| `<leader>E`   | Space + E        | Toggle netrw                                |
| `J` (visual)  | Shift-J          | Move selected lines down                    |
| `K` (visual)  | Shift-K          | Move selected lines up                      |
| `J` (normal)  | Shift-J          | Join lines without moving cursor            |
| `<C-d>`       | Ctrl + d         | Page down and keep cursor centered          |
| `<C-u>`       | Ctrl + u         | Page up and keep cursor centered            |
| `n`           | n                | Next search result and center               |
| `N`           | Shift-N          | Previous search result and center           |
| `<leader>p`   | Space + p        | Replace selection without losing register   |
| `<leader>Y`   | Space + Y        | Yank to system clipboard                    |
| `<leader>d`   | Space + d        | Delete to black-hole register               |
| `<leader>sv`  | Space + s v      | Vertical split                              |
| `<leader>sh`  | Space + s h      | Horizontal split                            |
| `<C-h>`       | Ctrl + h         | Jump to left window                         |
| `<C-j>`       | Ctrl + j         | Jump to below window                        |
| `<C-k>`       | Ctrl + k         | Jump to above window                        |
| `<C-l>`       | Ctrl + l         | Jump to right window                        |
| `<C-S-h>`     | Ctrl + Shift + h | Decrease split width                        |
| `<C-S-j>`     | Ctrl + Shift + j | Decrease split height                       |
| `<C-S-k>`     | Ctrl + Shift + k | Increase split height                       |
| `<C-S-l>`     | Ctrl + Shift + l | Increase split width                        |
| `<leader>bd`  | Space + b d      | Force-delete buffer                         |
| `<leader>lr`  | Space + l r      | LSP rename symbol                           |
| `<leader>la`  | Space + l a      | LSP code action                             |
| `gd`          | g d              | Go to definition                            |
| `gI`          | g I              | Go to implementation                        |
| `<leader>D`   | Space + D        | Go to type definition                       |
| `<leader>K`   | Space + K        | LSP hover                                   |
| `<leader>lf`  | Space + l f      | Format buffer                               |
| `<leader>ee`  | Space + e e      | Toggle ranger file explorer                 |
| `[d`          | \[ d             | Go to next diagnostic                       |
| `]d`          | ] d              | Go to previous diagnostic                   |
| `<leader>ed`  | Space + e d      | Show diagnostic popup                       |
| `gr`          | g r              | Telescope LSP references                    |
| `<leader>lss` | Space + l s s    | Telescope document symbols                  |
| `<leader>lws` | Space + l w s    | Telescope workspace symbols                 |
| `<leader>ff`  | Space + f f      | Telescope find files                        |
| `<leader>fg`  | Space + f g      | Telescope live grep                         |
| `<leader>fb`  | Space + f b      | Telescope buffers (Ctrl-d to delete)        |
| `<leader>xx`  | Space + x x      | Toggle Trouble diagnostics (workspace)      |
| `<leader>xb`  | Space + x b      | Toggle Trouble diagnostics (current buffer) |
