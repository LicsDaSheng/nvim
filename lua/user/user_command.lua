-- Maven执行相关命令
vim.api.nvim_create_user_command('MavenClean',
  'TermExec cmd="mvn -T3C clean"', { desc = 'Maven Clean' })
vim.api.nvim_create_user_command('MavenCompile',
  'TermExec cmd="mvn -T3C compile -e -U -Dmaven.test.skip=true -Dfile.encoding=UTF-8"', {})
vim.api.nvim_create_user_command('MavenCompileWithTest',
  'TermExec cmd="mvn -T3C compile -e -U -Dfile.encoding=UTF-8"', {})
vim.api.nvim_create_user_command('MavenPackage',
  'TermExec cmd="mvn -T3C  package -e -U -Dmaven.test.skip=true -Dfile.encoding=UTF-8"', {})
vim.api.nvim_create_user_command('MavenPackage',
  'TermExec cmd="mvn -T3C  package -e -U -Dmaven.test.skip=true -Dfile.encoding=UTF-8"', {})

-- 格式化命令
vim.api.nvim_create_user_command('Format', 'lua require("lvim.lsp.utils").format()', {})
