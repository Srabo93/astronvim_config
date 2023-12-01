-- Mapping data with "desc" stored directly by vim.keymap.set().
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>tt"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<C-'>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  t = {
    ["<leader>tt"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<C-'>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
}
