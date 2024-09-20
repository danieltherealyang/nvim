-- LSP Zero settings
local lsp_zero = require('lsp-zero')

-- lsp_attach is where you enable features that only work
-- if there is a language server active in the file
local lsp_attach = function(client, bufnr)
    vim.keymap.set('n', 'mk', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = "Hover symbol info", buffer = bufnr })
    vim.keymap.set('n', 'md', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = "Jump to symbol definition", buffer = bufnr })
    vim.keymap.set('n', 'mD', '<cmd>lua vim.lsp.buf.declaration()<cr>', { desc = "Jump to symbol declaration",  buffer = bufnr })
    vim.keymap.set('n', 'mi', '<cmd>lua vim.lsp.buf.implementation()<cr>', { desc = "List all symbol implementations", buffer = bufnr })
    vim.keymap.set('n', 'mo', '<cmd>lua vim.lsp.buf.type_definition()<cr>', { desc = "Jump to symbol type definition", buffer = bufnr })
    vim.keymap.set('n', 'mr', '<cmd>lua vim.lsp.buf.references()<cr>', { desc = "List all symbol references", buffer = bufnr })
    vim.keymap.set('n', 'ms', '<cmd>lua vim.lsp.buf.signature_help()<cr>', { desc = "Hover symbol signature", buffer = bufnr })
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = "Rename all symbol references", buffer = bufnr })
    vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', { desc = "Format current code", buffer = bufnr })
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', { desc = "Select code action", buffer = bufnr })
end

lsp_zero.extend_lspconfig({
    sign_text = true,
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

vim.diagnostic.config({
  virtual_text = false,
  float = {
      source = 'always',
      border = 'rounded'
  }
})

vim.api.nvim_set_keymap("n", "<leader>i", ":lua vim.diagnostic.open_float(nil, {focus=true, scope='cursor'})<CR>", { desc = "Open diagnostic window" })

-- Mason LSP installer
require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { 'lua_ls', 'rust_analyzer' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

-- Autocompletion
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    snippet = {
        expand = function(args)
            -- You need Neovim v0.10 to use vim.snippet
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.confirm({select = true}),
        ['<C-f>'] = cmp_action.vim_snippet_jump_forward(),
        ['<C-b>'] = cmp_action.vim_snippet_jump_backward(),
    }),
})
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
