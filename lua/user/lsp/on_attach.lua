-- local function printTabel(t)
--   local print_r_cache = {}
--   local function sub_print_r(t, indent)
--     if (print_r_cache[tostring(t)]) then
--       print(indent .. "*" .. tostring(t))
--     else
--       print_r_cache[tostring(t)] = true
--       if (type(t) == "table") then
--         for pos, val in pairs(t) do
--           if (type(val) == "table") then
--             print(indent .. "[" .. pos .. "] => " .. tostring(t) .. " {")
--             sub_print_r(val, indent .. string.rep(" ", string.len(pos) + 8))
--             print(indent .. string.rep(" ", string.len(pos) + 6) .. "}")
--           elseif (type(val) == "string") then
--             print(indent .. "[" .. pos .. '] => "' .. val .. '"')
--           else
--             print(indent .. "[" .. pos .. "] => " .. tostring(val))
--           end
--         end
--       else
--         print(indent .. tostring(t))
--       end
--     end
--   end
--   if (type(t) == "table") then
--     print(tostring(t) .. " {")
--     sub_print_r(t, "  ")
--     print("}")
--   else
--     sub_print_r(t, "  ")
--   end
--   print()
-- end
-- return function(client, bufnr)
--   vim.pretty_print('my on attach[' .. client.name .. ']' .. bufnr.filetypes)
-- end
return function(client, bufnr)
  local status, jdtls = pcall(require, "jdtls")
  if not status then
    vim.notify("jdtls load error", vim.log.levels.ERROR)
    return
  end
  local _, _ = pcall(vim.lsp.codelens.refresh)
  require("jdtls.dap").setup_dap_main_class_configs()
  jdtls.setup_dap({ hotcodereplace = "auto" })
  require("lvim.lsp").common_on_attach(client, bufnr)
  local map = function(mode, lhs, rhs, desc)
    if desc then
      desc = desc
    end

    vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc, buffer = bufnr, noremap = true })
  end
  map("n", "<leader>lco", jdtls.organize_imports, "Organize Imports")
  map("n", "<leader>lcv", jdtls.extract_variable, "Extract Variable")
  map("n", "<leader>lcc", jdtls.extract_constant, "Extract Constant")
  map("n", "<leader>lct", jdtls.test_nearest_method, "Test Method")
  map("n", "<leader>lcT", jdtls.test_class, "Test Class")
  map("n", "<leader>lcu", "<Cmd>JdtUpdateConfig<CR>", "Update Config")
  map("v", "<leader>lcv", "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", "Extract Variable")
  map("v", "<leader>lcc", "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>", "Extract Constant")
  map("v", "<leader>lcm", "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>", "Extract Method")
end
