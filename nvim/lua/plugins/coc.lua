return {
    {
      'neoclide/coc.nvim',
      branch = 'release',
      config = function()
        -- Coc.nvim 配置代码
        vim.cmd [[
          " 使用相对路径导入模块
          let g:coc_global_extensions = ['coc-tsserver']
  
          " 自定义 coc settings
          autocmd FileType typescript,json setlocal formatexpr=CocAction('formatSelected')
  
          " 映射快捷键
          nmap <silent> gd <Plug>(coc-definition)
          nmap <silent> gy <Plug>(coc-type-definition)
          nmap <silent> gi <Plug>(coc-implementation)
          nmap <silent> gr <Plug>(coc-references)
        ]]
  
        -- 设置 coc-settings.json 文件
        local coc_settings_path = vim.fn.stdpath('config') .. '/coc-settings.json'
        local coc_settings = {
          tsserver = {
            enable = true
          },
          ['typescript.preferences.importModuleSpecifier'] = 'relative'
        }
        local json = vim.fn.json_encode(coc_settings)
        local file = io.open(coc_settings_path, "w+")
        file:write(json)
        file:close()
      end
    }
}