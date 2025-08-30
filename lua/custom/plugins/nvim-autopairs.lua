return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		require("nvim-autopairs").setup({})

		-- THIS IS THE KEY PART - proper blink.cmp integration
		require("blink.cmp").setup({
			completion = {
				accept = {
					auto_brackets = {
						enabled = true,
					},
				},
			},
		})
	end,
}
