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
-- j is on the top row, so it scrolls up
-- k is on the bottom row, so it scrolls down
vim.keymap.set('n', 'j', 'k')
vim.keymap.set('n', 'k', 'j')
