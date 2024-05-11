return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      vim.g.rustaceanvim = {
        -- Plugin configuration
        -- tools = {
        -- },
        -- LSP configuration
        server = {
          ---@diagnostic disable-next-line: unused-local
          on_attach = function(client, bufnr)
            config_lsp_mappings(bufnr)

            local opts = { noremap = true, silent = true, buffer = bufnr }

            opts.desc = "See available code actions"
            vim.keymap.set(
              { "n", "v" },
              "<leader>la",
              "<cmd>RustLsp codeAction<cr>",
              opts
            )
            vim.keymap.set(
              { "n", "v" },
              ",a",
              "<cmd>RustLsp codeAction<cr>",
              opts
            )
            vim.keymap.set(
              { "n", "v" },
              "<M-r>",
              "<cmd>RustLsp codeAction<cr>",
              opts
            )

            vim.keymap.set("n", "J", "<cmd>RustLsp joinLines<cr>", opts)

            opts.desc = "cargo run"
            vim.keymap.set(
              { "n", "i" },
              ",cR",
              "<cmd>TermExec cmd='cargo run'<cr>",
              -- "<cmd>TermExec cmd='MTL_HUD_ENABLED=1 cargo run'<cr>",
              opts
            )
            opts.desc = "cargo run and exit"
            vim.keymap.set(
              { "n", "i" },
              ",cr",
              "<cmd>TermExec cmd='cargo run; exit'<cr>",
              -- "<cmd>TermExec cmd='MTL_HUD_ENABLED=1 cargo run; exit'<cr>",
              opts
            )

            opts.desc = "cargo build"
            vim.keymap.set(
              { "n", "i" },
              ",cb",
              "<cmd>TermExec cmd='cargo build'<cr>",
              opts
            )

            opts.desc = "cargo test"
            vim.keymap.set(
              { "n", "i" },
              ",cT",
              "<cmd>TermExec cmd='cargo test'<cr>",
              opts
            )
          end,
          -- default_settings = {
          --   -- rust-analyzer language server configuration
          --   ['rust-analyzer'] = {
          --   },
          -- },
        },
        -- DAP configuration
        -- dap = {
        -- },
      }
    end,
  },
}
