# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

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

### Changed

- Diagnostics text highlights.
- `gui=undercurl` is enabled in tmux >= 2.9
- Adjust status line bg.
- Redesign syntax logic of tree-sitter.

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

[unreleased]: https://github.com/sainnhe/sonokai/compare/v0.2.1...HEAD
[0.2.1]: https://github.com/sainnhe/sonokai/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/sainnhe/sonokai/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/sainnhe/sonokai/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/sainnhe/sonokai/releases/tag/v0.1.0
