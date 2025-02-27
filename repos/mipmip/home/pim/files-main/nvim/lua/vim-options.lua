vim.g.linny_open_notebook_path = vim.env.HOME .. '/secondbrain'
--vim.g.linnycfg_path_wiki_content = vim.env.HOME .. '/secondbrain/wikiContent'
--vim.g.linnycfg_path_wiki_config = vim.env.HOME .. '/secondbrain/wikiConfig'
--vim.g.linnycfg_path_index = vim.env.HOME .. '/secondbrain/wikiIndex'

vim.g.linny_menu_display_docs_count = 1
vim.g.linny_menu_display_taxo_count = 1
vim.g.linnycfg_setup_autocommands = 1

-- vim.g.linny_wikitags_register = {}
vim.cmd [[
let g:linny_wikitags_register = {}
]]

vim.filetype.add({
  extension = {
    tfvars = 'terraform'
  }
})

vim.o.hlsearch = true
vim.wo.number = false
vim.o.mouse = 'a'
--vim.o.clipboard = 'unnamedplus' -- use *y or "*p
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrap = false


-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true


vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
