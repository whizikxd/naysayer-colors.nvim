# naysayer-colors.nvim

neovim theme inspired by J. Blow emacs theme

![Example screenshot](https://raw.githubusercontent.com/whizikxd/naysayer-colors.nvim/master/assets/screenshot.png)

## Installation

<details>
    <summary>using lazy.nvim</summary>

```lua
{
  "whizikxd/naysayer-colors.nvim",
  lazy = false,
  config = function()
    vim.cmd("colorscheme naysayer")
  end
}
```

</details>

<details>
    <summary>using packer.nvim</summary>

```lua
use {
  "whizikxd/naysayer-colors.nvim",
  config = function()
    vim.cmd("colorscheme naysayer")
  end
}
```

</details>
