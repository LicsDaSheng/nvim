-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"


-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["mc"] = {
  "<cmd>TermExec cmd='mvn -T3C compile -e -U -Dmaven.test.skip=true -Dfile.encoding=UTF-8'<CR>",
  "Maven compile ignore test" }
lvim.builtin.which_key.mappings["mC"] = { "<cmd>TermExec cmd='mvn -T3C compile -e -U  -Dfile.encoding=UTF-8'<CR>",
  "Maven compile with test" }

lvim.keys.normal_mode["<C-m>"] = "<cmd>Telescope commands<CR>"

lvim.lsp.buffer_mappings.normal_mode['gd'] = {
  '<cmd> lua require("telescope.builtin").lsp_definitions(require("telescope.themes").get_ivy())<CR>' }
lvim.lsp.buffer_mappings.normal_mode['gr'] = {
  '<cmd> lua require("telescope.builtin").lsp_references(require("telescope.themes").get_ivy())<CR>' }
