return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    config = function() require("kanagawa").setup {} end,
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   name = "tokyonight",
  --   config = function()
  --     require("tokyonight").setup { style = "night" }
  --   end,
  -- },
  -- {
  --   "tiagovla/tokyodark.nvim",
  --   name = "tokyodark",
  --   config = function()
  --     require("tokyodark").setup {}
  --   end,
  -- },
  -- {
  --   "navarasu/onedark.nvim",
  --   name = "onedark",
  --   config = function()
  --     require("onedark").setup { style = "dark" }
  --   end,
  -- },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000,
  --   config = function() require("onedarkpro").setup {} end,
  -- },
  -- {
  --   "monsonjeremy/onedark.nvim",
  --   config = function() require("onedark").setup {} end,
  -- },
  {
    "Shatur/neovim-ayu",
    config = function() require("ayu").setup { mirage = true } end,
  },
  {
    "NTBBloodbath/doom-one.nvim",
    config = function() end,
  },
  {
    "sainnhe/edge",
    config = function() end,
  },

  -- {
  --   "lunarvim/Onedarker.nvim",
  --   config = function()
  --     require("onedarker").setup {}
  --   end,
  -- },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      opts.statusline = {                                                            -- statusline
        hl = { fg = "fg", bg = "bg" },
        status.component.mode { mode_text = { padding = { left = 2, right = 2 } } }, -- add the mode text
        status.component.git_branch(),
        status.component.file_info { filetype = {}, filename = false, file_modified = false },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp(),
        status.component.treesitter(),
        status.component.nav(),
        -- remove the 2nd mode indicator on the right
      }

      -- return the final configuration table
      return opts
    end,
  },
}
