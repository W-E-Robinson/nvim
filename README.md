<p align="center">
  <img src="https://neovim.io/logos/neovim-logo-300x87.png" alt="Neovim" width="300">
</p>

My personal Neovim config, written in Lua and managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

- **Leader:** `<Space>`
- **Colourscheme:** [nightfox](https://github.com/EdenEast/nightfox.nvim) (`duskfox`, toggles to `dayfox`)
- **Forgot a keymap?** Press `<leader>` and wait, [which-key](https://github.com/folke/which-key.nvim) will show you the rest.

## Install

```sh
# back up any existing config first
mv ~/.config/nvim ~/.config/nvim.bak

git clone https://github.com/W-E-Robinson/nvim ~/.config/nvim
nvim
```

lazy.nvim bootstraps itself on first launch and installs everything pinned in `lazy-lock.json`. LSP servers and debug adapters are installed through [mason](https://github.com/williamboman/mason.nvim).

## Layout

```
.
├── init.lua              # entry point
├── lazy-lock.json        # pinned plugin versions
└── lua/
    ├── config/
    │   ├── lazy.lua      # lazy.nvim bootstrap + leader keys
    │   ├── remap.lua     # core keymaps
    │   ├── set.lua       # editor options
    │   └── clipboard.lua
    ├── plugins/          # one file per plugin spec
    └── patches/          # workarounds for upstream issues
```

## Keymaps

Mode key: **n** = normal, **v** = visual, **i** = insert.

- [Core](#core)
- [Finding things](#finding-things) — telescope, bufferlist, oil
- [Code](#code) — lsp, nvim-cmp, comment
- [Debugging & testing](#debugging--testing) — dap, neotest
- [Git](#git) — nvim-git-blame, gitlinker
- [Interface & misc](#interface--misc)

### Core

#### Files & splits

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>pv` | open netrw explorer (`:Ex`) |
| n | `<leader>H` | explorer in a horizontal split (`:Hex`) |
| n | `<leader>V` | explorer in a vertical split (`:Vex`) |
| n | `<leader>h;` | clone current file into a horizontal split |
| n | `<leader>v;` | clone current file into a vertical split |
| n | `<leader>o` | close every split except the current one |
| n, i | `Ctrl-c` | write all and quit (`:wqa`) — refuses if a Rust file is open |
| n | `<leader><leader>` | source current file |
| n | `<leader>wai` | "where am I" — yank `file:line` to the system clipboard |

#### Editing

| mode | keymap | effect |
| --- | --- | --- |
| v | `J` / `K` | move selection down / up a line |
| n | `J` | join line below, keeping the cursor in place |
| n, v | `<leader>y` | yank to system clipboard |
| n | `<leader>Y` | yank line to system clipboard |
| n, v | `<leader>dv` | delete into the void (black hole register) |
| i | `Ctrl-f` | insert `{ }` and put the cursor on a new line between them |

#### Search & replace

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>/` | search for the word under the cursor |
| n | `<leader>sg` | substitute word under cursor across the file (`:%s/…/g`) |
| n | `<leader>sc` | same, but confirm each one (`:%s/…/gc`) |
| n | `n` / `N` | next / previous match, centred |
| n | `Ctrl-d` / `Ctrl-u` | half-page down / up, centred |

### Finding things

#### [telescope](https://github.com/nvim-telescope/telescope.nvim)

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>pf` | find files |
| n | `<leader>pg` | find git-tracked files |
| n | `<leader>ps` | grep |
| n | `<leader>pS` | repeat the last grep |
| n | `<leader>pws` | grep for the word under the cursor |
| n | `<leader>pWs` | grep for the WORD under the cursor (includes punctuation) |
| n | `<leader>po` | recently opened files |
| n | `<leader>tb` | list open buffers |

#### [bufferlist](https://github.com/EL-MASTOR/bufferlist.nvim)

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>l` | open bufferlist |

#### [oil](https://github.com/stevearc/oil.nvim)

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>-` | open the parent directory in oil (or switch an explorer over to oil) |

### Code

#### [lsp](https://github.com/neovim/nvim-lspconfig)

| mode | keymap | effect |
| --- | --- | --- |
| n | `gd` | go to definition |
| n | `gD` | go to definition in a vertical split |
| n | `K` | hover docs |
| n | `Ctrl-h` | signature help |
| n | `<leader>f` | format buffer |
| n | `<leader>vca` | code actions |
| n | `<leader>vrr` | references |
| n | `<leader>vrn` | rename |
| n | `<leader>vd` | show the full diagnostic for this line |
| n | `<leader>cd` | send all diagnostics to the quickfix list |

#### [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

| mode | keymap | effect |
| --- | --- | --- |
| i | `Ctrl-n` / `Ctrl-p` | next / previous item |
| i | `Ctrl-y` | accept item |
| i | `Ctrl-Space` | open completion menu |

#### [Comment](https://github.com/numToStr/Comment.nvim)

| mode | keymap | effect |
| --- | --- | --- |
| n, v | `<leader>gc` | toggle line comment |
| n, v | `<leader>gb` | toggle block comment |

### Debugging & testing

#### [dap](https://github.com/mfussenegger/nvim-dap)

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>cb` | start debugger / continue |
| n | `<leader>ss` | step over |
| n | `<leader>si` | step into |
| n | `<leader>so` | step out |
| n | `<leader>bd` | toggle breakpoint |
| n | `<leader>B` | set conditional breakpoint |
| n | `<leader>dr` | toggle REPL |
| n | `<leader>ds` | toggle stacks |
| n | `<leader>dw` | toggle watches |
| n | `<leader>dS` | toggle scopes |
| n | `<leader>dc` | toggle console |
| n | `<leader>db` | toggle breakpoints list |

#### [neotest](https://github.com/nvim-neotest/neotest)

Adapters: jest, python, rust, plenary.

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>nn` | run nearest test |
| n | `<leader>nf` | run tests in current file |
| n | `<leader>np` | toggle output panel |

### Git

#### [nvim-git-blame](https://github.com/W-E-Robinson/nvim-git-blame)

| mode | keymap | effect |
| --- | --- | --- |
| n | `<leader>bcl` | blame current line |

#### [gitlinker](https://github.com/linrongbin16/gitlinker.nvim)

| mode | keymap | effect |
| --- | --- | --- |
| n, v | `<leader>gy` | yank permalink to line/selection |
| n, v | `<leader>gY` | open permalink in browser |

### Interface & misc

| plugin | mode | keymap | effect |
| --- | --- | --- | --- |
| [nightfox](https://github.com/EdenEast/nightfox.nvim) | n | `<leader>ics` | toggle dark / light |
| [undotree](https://github.com/mbbill/undotree) | n | `<leader>u` | toggle undo tree |
| [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) | n | `<leader>mp` | toggle markdown preview |
| [which-key](https://github.com/folke/which-key.nvim) | n | `<leader>?` | show buffer-local keymaps |
| [screenkey](https://github.com/NStefan002/screenkey.nvim) | n | `<leader>sk` | toggle screenkey |
| [hardtime](https://github.com/m4xshen/hardtime.nvim) | n | `<leader>iht` | toggle hardtime |
| [typr](https://github.com/nvzone/typr) | n | `<leader>mtt` | typing practice |
| [typr](https://github.com/nvzone/typr) | n | `<leader>mts` | typing stats |
| [cellular-automaton](https://github.com/eandrju/cellular-automaton.nvim) | n | `<leader>mir` | make it rain 🌧️ |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | n | `<leader>;` | update plugins |

## Also installed

Plugins that work in the background, with no keymaps:

- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — syntax highlighting
- [lualine](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [winbar](https://github.com/ramilito/winbar.nvim) — file path in the winbar
- [colorful-winsep](https://github.com/nvim-zh/colorful-winsep.nvim) — highlighted split borders
- [smear-cursor](https://github.com/sphamba/smear-cursor.nvim) — animated cursor trail
- [beacon](https://github.com/danilamihailov/beacon.nvim) — flash the cursor on big jumps
- [matchparen](https://github.com/monkoose/matchparen.nvim) — faster matching-bracket highlights
- [regexplainer](https://github.com/bennypowers/nvim-regexplainer) — explains the regex under the cursor
- [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) — motion practice games (`:VimBeGood`)
