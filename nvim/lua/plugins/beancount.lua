return {
  "hxueh/beancount.nvim",
  ft = { "beancount", "bean" },
  config = function()
    require("beancount").setup({
      python_path = ".venv/bin/python",
      main_bean_file = "main.bean",
      separator_column = 70,
    })
    -- Tree-sitter
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "beancount" },
      highlight = { enable = true },
      incremental_selection = { enable = true },
      indent = { enable = true },
    })
  end,
}
