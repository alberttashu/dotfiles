require('rose-pine').setup({
})

function SetColors()
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end	

SetColors();
