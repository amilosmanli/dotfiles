return {

  { "dcorral/svgpreview-vim" },

  {
    "ydkulks/cursor-dark.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cursor-dark-midnight",
    },
  },
}
