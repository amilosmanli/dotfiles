-- Remap snacks picker/explorer keys for Colemak layout
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          input = {
            keys = {
              ["<c-n>"] = "list_down",
              ["<c-l>"] = "list_up",
            },
          },
          list = {
            keys = {
              ["n"] = "list_down",
              ["l"] = "list_up",
              ["<c-n>"] = "list_down",
              ["<c-l>"] = "list_up",
              -- disable j/k so they don't interfere
              ["j"] = false,
              ["k"] = false,
              ["<c-j>"] = false,
              ["<c-k>"] = false,
            },
          },
        },
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  -- Colemak navigation
                  ["n"] = "list_down",
                  ["l"] = "list_up",
                  -- Remap displaced explorer actions
                  ["e"] = "confirm", -- was l (open/enter)
                  ["M"] = "explorer_move", -- move file (was m)
                  ["h"] = false, -- free h
                  ["m"] = "explorer_close", -- close dir (was h)
                },
              },
            },
          },
        },
      },
    },
  },
}
