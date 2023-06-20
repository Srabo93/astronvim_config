return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
                "vim",
    "lua",
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "rust",
    "sql",
    "dockerfile",
    "dot",
    "gitignore",
    "graphql",
    "jsdoc",
    "json",
    "php",
    "phpdoc",
    "toml",
    "twig",
    "yaml",
    })
  end,
}
