return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local gs = require('gitsigns')
    local inline_diff = false

    gs.setup({
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      signcolumn = true,
      linehl = false,
      word_diff = false,
      on_attach = function(bufnr)
        local function map(lhs, rhs, desc)
          vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
        end

        map('<leader>gd', function()
          inline_diff = not inline_diff
          gs.toggle_linehl(inline_diff)
          gs.toggle_word_diff(inline_diff)
          -- Still supported upstream, but deprecated in favor of the
          -- single-hunk preview. Needed here to show ALL deleted lines.
          gs.toggle_deleted(inline_diff)
          vim.notify('Git inline diff: ' .. (inline_diff and 'ON' or 'OFF'))
        end, 'Git: toggle inline diff (all buffers)')

        map(']c', function()
          if vim.wo.diff then
            vim.cmd.normal({ ']c', bang = true })
          else
            gs.nav_hunk('next', { count = vim.v.count1 })
          end
        end, 'Git: next change')

        map('[c', function()
          if vim.wo.diff then
            vim.cmd.normal({ '[c', bang = true })
          else
            gs.nav_hunk('prev', { count = vim.v.count1 })
          end
        end, 'Git: previous change')

        map('<leader>gp', gs.preview_hunk, 'Git: preview change')
      end,
    })
  end,
}
