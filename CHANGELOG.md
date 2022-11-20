# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added

- Optimize `b0o/incline.nvim`.
- Optimize winbar.
- Optimize `echasnovski/mini.nvim`.
- Support coc popup menu.
- Optimize `ggandor/lightspeed.nvim`.
- Optimize `pwntester/octo.nvim`.
- Optimize `simrat39/symbols-outline.nvim`.
- Support for YCM semantic highlighting and inlayHints.
- Optimize `MattesGroeger/vim-bookmarks`.
- Support for vim-lsp semantic highlighting and inlayHints.
- New tree-sitter tokens.
- Support for shading.
- Optimize `nvim-neo-tree/neo-tree.nvim`

## [0.3.2] - 2022-05-26

### Added

- Add `g:sonokai_spell_foreground`.
- Optimize `junegunn/limelight.vim`.
- Generate `/after/syntax`.
- Add FAQ for configuration options.
- Optimize `rhysd/clever-f.vim`.
- Optimize `rcarriga/nvim-dap-ui`.
- Add `g:sonokai_disable_terminal_colors`.
- Optimize `voldikss/vim-floaterm`.
- Support `g:sonokai_transparent_background == 2`.
- Optimize `stevearc/aerial.nvim`.
- Optimize `wbthomason/packer.nvim`.

### Changed

- Redesign coc symbols.
- Redesign `liuchengxu/vim-clap`.
- Redesign semantic hi groups in coc.nvim [neoclide/coc.nvim#3355](https://github.com/neoclide/coc.nvim/pull/3355).

### Fixed

- Update &runtimepath after generating syntax files.

### Removed

- Remove alacritty theme from this repo. [`a05e702`](https://github.com/sainnhe/sonokai/commit/a05e70254c63e5f5a896081932868f97765e36ac)
- Remove examples of configuration options in help doc.

## [0.3.1] - 2022-01-09

### Added

- Optimize `fannheyward/coc-rust-analyzer`.
- Add [Diagnostic](https://github.com/neovim/neovim/pull/15585) highlight groups.
- Optimize `vimwiki/vimwiki`.
- Optimize `hrsh7th/nvim-cmp`.
- Optimize `folke/trouble.nvim`.
- Optimize `TimUntersberger/neogit`.
- Optimize `lambdalisue/fern.vim`.
- Optimize `romgrk/barbar.nvim`.
- Optimize `rcarriga/nvim-notify`.
- Support `nvim-lualine/lualine.nvim`.
- Optimize performance in vim by disabling hi groups of neovim-only plugins.
- Optimize `lewis6991/gitsigns.nvim`.
- Optimize `airblade/vim-gitgutter`.
- Optimize `mhinz/vim-signify`.
- Optimize `glepnir/dashboard-nvim`.
- Optimize `glepnir/lspsaga.nvim`.
- Add modeline to generated ftplugin files.

### Changed

- Disable tmux checking.

## [0.3.0] - 2021-08-06

### Added

- Optimize `lervag/vimtex`.
- Add `g:sonokai_diagnostic_text_highlight`
- Optimize `liuchengxu/vim-clap`.
- Add whitelist for extended file types.
- Support for leaderf popup mode.
- Optimize `nvim-telescope/telescope.nvim`.
- Add `g:sonokai_diagnostic_virtual_text`.
- Optimize `kyazdani42/nvim-tree.lua`.
- Add installation guide for using pack feature.
- Add `espresso` variant.
- Add `g:sonokai_show_eob`.
- Optimize `McSinyx/vim-octave`.
- Support semantic highlight in coc.nvim .
- Optimize semantic highlight in some plugins.
- Support `thiagoalessio/rainbow_levels.vim` and `p00f/nvim-ts-rainbow`.
- Optimize coc symbols and coc tree.

### Changed

- Diagnostics text highlights.
- `gui=undercurl` is enabled in tmux >= 2.9
- Adjust status line bg.
- Redesign syntax logic of tree-sitter.

### Removed

- Remove `g:sonokai_sign_column_background`.

## [0.2.1] - 2020-12-29

### Added

- AUR packages.
- Support neovim lsp diagnostics.
- New highlight groups for coc-explorer.
- Outline of help doc.

### Changed

- Adjust red and orange in the default variant.
- Adjust yellow in the default variant.
- Remove duplicate docs in README.
- Optimize diff colors.

### Fixed

- Fix errors when doesn't set `g:colors_name`.
- Fix `DiffText` in Vim.
- Fix `CurrentWord` in diff mode.
- Fix `CursorColumn` in diff mode.

## [0.2.0] - 2020-07-20

### Changed

- Adjust the background color in the `andromeda` variant.
- Adjust yellow in the `andromeda` variant.
- Adjust `Search` and `IncSearch`.
- Adjust `NonText`, `Whitespace` and `SpecialKey`.
- Rewrite based on gruvbox-material.
- Add `default` variant.

### Added

- Optimize Coc.
- Add hi groups for `iCursor` and `vCursor`.
- Optimize gitcommit.
- Add hi groups for builtin lsp and checkhealth.
- Optimize DOS INI.
- Optimize Matlab.
- Optimize Airline.
- Optimize `cohama/agit.vim`.
- Add `ToolbarLine` and `ToolbarButton`.

## [0.1.1] - 2020-04-04

### Added

- Add port for kitty, alacritty, tmux and zsh.
- Optimize `Yggdroot/indentLine`.
- Optimize `arakashic/chromatica.nvim`.
- Optimize `numirias/semshi`.
- Optimize `jackguo380/vim-lsp-cxx-highlight`.

## [0.1.0] - 2020-02-19

### Added

- Basically finished.

[unreleased]: https://github.com/sainnhe/sonokai/compare/v0.3.2...HEAD
[0.3.2]: https://github.com/sainnhe/sonokai/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/sainnhe/sonokai/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/sainnhe/sonokai/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/sainnhe/sonokai/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/sainnhe/sonokai/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/sainnhe/sonokai/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/sainnhe/sonokai/releases/tag/v0.1.0
