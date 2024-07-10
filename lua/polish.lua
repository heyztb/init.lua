-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add({
  extension =  {
    templ = "templ"
  }
})

-- remap these keys for colemak dh, makes more sense to me
vim.keymap.set('', 'n', 'h')
vim.keymap.set('', 'e', 'j')
vim.keymap.set('', 'i', 'k')
vim.keymap.set('', 'o', 'l')
vim.keymap.set('', 'l', 'i')
vim.keymap.set('', 'h', 'n')
vim.keymap.set('', 'h', 'N')
