return {
  "hxueh/beancount.nvim",
  ft = { "beancount", "bean" },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      opts = function(_, opts)
        opts = opts or {}
        opts.ensure_installed = opts.ensure_installed or {}
        if type(opts.ensure_installed) == "table" then
          table.insert(opts.ensure_installed, "beancount")
        end
        return opts
      end,
    },
    {
      "saghen/blink.cmp",
      opts = function(_, opts)
        table.insert(opts.sources.default, "beancount")
        opts.sources.providers = opts.sources.providers or {}
        opts.sources.providers.beancount = {
          name = "beancount",
          module = "beancount.completion.blink",
          score_offset = 100,
          opts = {
            trigger_characters = { ":", "#", "^", '"', " " },
          },
        }
        return opts
      end,
    },
    {
      "L3MON4D3/LuaSnip",
      optional = true,
    },
  },
  config = function()
    require("beancount").setup({
      python_path = ".venv/bin/python",
      main_bean_file = "main.bean",
      separator_column = 70,
      auto_fill_amounts = true,
    })
  end,
}
