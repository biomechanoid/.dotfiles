local action_state =require('telescope.actions.state')
require('telescope').setup{
  defaults = {
    prompt_prefix = "$ ",
    mappings = {
        i = {
          ["<c-a>"] = function() print(vim.inspect(action_state.get_selected_entry()))end 
        }
    } 
  },
  extensions = {
        'fzf',
  },
  
 }


require("telescope").load_extension "file_browser" 
--require("telescope").load_extension "coc" 
--require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))


