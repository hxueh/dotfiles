-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Font
vim.opt.guifont = "Menlo:h16"

if vim.g.neovide then
  -- Disable all main animations by setting their duration to 0
  vim.g.neovide_cursor_animation_length = 0.0
  vim.g.neovide_scroll_animation_length = 0.0
  vim.g.neovide_position_animation_length = 0.0 -- Window position changes

  -- Disable the cursor trail effect (the smooth movement/shadow)
  vim.g.neovide_cursor_trail_size = 0.0

  -- Disable 'bounce' effect when scrolling past the buffer limits
  vim.g.neovide_scroll_animation_far_lines = 0.0

  -- Disable cursor animation in command-line and insert mode
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_animate_in_insert_mode = false

  -- Font
end
