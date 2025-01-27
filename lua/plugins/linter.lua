return {
  'mfussenegger/nvim-lint',
  config = function()
    require('lint').linters_by_ft = {
      md = { 'vale' },
      latex = { 'vale' },
      lua = { 'luacheck' },
      txt = { 'vale' },

      sh = { 'shellcheck' },

      c = { 'cpplint' },
      cpp = { 'cpplint' },

      gd = { 'gdtoolkit' },

      html = { 'htmlhint' },
      css = { 'stylehint' },
      js = { 'eslint_d' },
      ts = { 'eslint_d' },
    }
  end
}
