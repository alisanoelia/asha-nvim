## asha.nvim

A simple lua colorscheme for neovim.

## todo

- [ ] fix background

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
require("lazy").setup({
  "alisanoelia/asha-nvim",
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("asha").setup({
      -- Your config here
      -- example
        background = "hard", -- delete in future
        transparent_background_level = 2,
        italics = true,
    })
  end,
})
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use({
  "alisanoelia/asha-nvim",
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("asha").setup()
  end,
})
```

## Usage

```lua
-- In Lua
vim.cmd([[colorscheme asha]])

```

To enable the everforest theme for LuaLine, you can specify it as such:

```lua
require("lualine").setup({
  options = {
    -- ... other configuration
    theme = "asha", -- Can also be "auto" to detect automatically.
  }
})
```

## Inspiration

- [everforest](https://github.com/sainnhe/everforest)
