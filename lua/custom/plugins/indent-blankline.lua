return {
	{
		'lukas-reineke/indent-blankline.nvim',
		main = "ibl",
		opts = {
			indent = {
				char = "│"
			},
			scope = {
				show_start = false
			}
		},
		config = function(_, opts)
			-- paste the hooks code here
			-- change the setup() call to:
			require("ibl").setup(opts)
		end
	}
}
