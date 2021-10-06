--lua << EOF
-- require'lspconfig'.pyls.setup{on_attach=require'completion'.attach}
require'lspconfig'.pyright.setup{on_attach=require'completion'.attach}
require'lspconfig'.clangd.setup{on_attach=require'completion'.attach}

-- If you want signature uncomment this line
-- require "lsp_signature".setup()

--EOF
