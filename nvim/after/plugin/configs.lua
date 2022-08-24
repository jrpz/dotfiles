require('lualine').setup {
  options = {
    theme = 'dracula'
  }
}

-- Colors
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require('catppuccin').setup({
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  integrations = {
    treesitter = true,
    telescope = true,
    markdown = true,
  },
  styles = {
    comments = { "italic" },
  }
})

vim.cmd [[colorscheme catppuccin]]


-- Telescope
local telescope = require('telescope')
local telescope_builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    file_ignore_patterns = { 'node_modules' },
    layout_strategy = 'vertical'
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case',
    },
    file_browser = {
      -- theme = 'ivy',
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ['i'] = {}, -- your custom insert mode mappings
        ["n"] = {}, -- your custom normal mode mappings
      }
    }
  }
})

telescope.load_extension('fzf')
telescope.load_extension('file_browser')


-- Completions
local cmp = require('cmp')

cmp.setup({
  -- snippet = {
  --   expand = function(args)
  --     vim.fn['vsnip#anonymous'](args.body)
  --   end,
  -- },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-y>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  }),
  experimental = {
    native_menu = false,
  },
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})


-- Langs
vim.g.markdown_fenced_languages = {
  'ts=typescript'
}

require('lspconfig').denols.setup{}

-- Extras
require('Comment').setup()



