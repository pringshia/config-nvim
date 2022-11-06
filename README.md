The contents of this repo are meant to be placed in your ~/.config folder

For example:
```
git clone --depth=1 https://github.com/pringshia/config-nvim ~/.config/nvim
```

Or added as a submodule:
```
git submodule add https://github.com/pringshia/config-nvim .config/nvim
```

## Wishlist

- Open questions:
  - should the packer_compiled file be kept out of source control?
    - seems to encode machine specific paths

- LSP support; intellisense/completion, better go-to-def
  - tree-sitter? - **ADDED**
    - add behind feature-flag
- Master file navigation
  - Harpoon? - **ADDED**
  - Telescope? - **ADDED**
    - need to add ripgrep/fzf?
  - develop fluency using these

- Low prio enhancements:
  - usability
    - beacon? for seeing cursor jumps
    - hop? for jumping around in files
  - code-assist
    - anything good for snippets?
    - lexima? for auto-close parens etc

