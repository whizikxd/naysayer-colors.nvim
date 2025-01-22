# naysayer-colors.nvim

neovim theme inspired by J. Blow emacs theme

![Example screenshot](https://raw.githubusercontent.com/whizikxd/naysayer-colors.nvim/master/assets/screenshot.png)

## Installation

> [!TIP]
> Use treesitter for the most consistent highlighting, highlighting without
> it is a WIP and may be incorrect for some languages

using lazy.nvim

```lua
{
  "whizikxd/naysayer-colors.nvim",
  lazy = false,
  config = function()
    vim.cmd.colorscheme("naysayer")
  end
}
```

using packer.nvim

```lua
use {
  "whizikxd/naysayer-colors.nvim",
  config = function()
    vim.cmd.colorscheme("naysayer")
  end
}
```
