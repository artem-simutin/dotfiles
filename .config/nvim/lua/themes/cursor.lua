return {
  'duarteocarmo/cursor-themes',
  lazy = false,
  priority = 1000,
  config = function()
    local function set_transparent()
      local groups = {
        'Normal',
        'NormalNC',
        'NormalFloat',
        'FloatBorder',
        'SignColumn',
        'EndOfBuffer',
        'StatusLine',
        'StatusLineNC',
        'TabLine',
        'TabLineFill',
        'VertSplit',
        'WinSeparator',
        'LineNr',
        'CursorLineNr',
        'FoldColumn',
        'TelescopeNormal',
        'TelescopeBorder',
        'TelescopePromptNormal',
        'TelescopePromptBorder',
        'TelescopeResultsNormal',
        'TelescopeResultsBorder',
        'TelescopePreviewNormal',
        'TelescopePreviewBorder',
        'NvimTreeNormal',
        'NvimTreeNormalNC',
        'NeoTreeNormal',
        'NeoTreeNormalNC',
        'WhichKeyFloat',
      }
      for _, g in ipairs(groups) do
        vim.api.nvim_set_hl(0, g, { bg = 'NONE' })
      end
    end

    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = 'cursor-*',
      callback = set_transparent,
    })
  end,
}
