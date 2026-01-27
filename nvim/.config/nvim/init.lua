vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>b", "<C-^>", { desc = "Jump to previous buffer" })
vim.keymap.set("n", "<leader>q", "<cmd>edit ~/Documents/quick.md<CR>", { desc = "Open quick note" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic message" })
vim.keymap.set("n", "<leader>cd", function()
	local line = vim.api.nvim_win_get_cursor(0)[1] - 1
	local diagnostics = vim.diagnostic.get(0, { lnum = line })

	if #diagnostics == 0 then
		vim.notify("No diagnostic on this line", vim.log.levels.INFO)
		return
	end

	local messages = {}
	for _, diagnostic in ipairs(diagnostics) do
		table.insert(messages, diagnostic.message)
	end

	local text = table.concat(messages, "\n")
	vim.fn.setreg("+", text)
	vim.notify("Diagnostic copied to clipboard", vim.log.levels.INFO)
end, { desc = "Copy diagnostic message to clipboard" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.showmode = false
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
local transparent = false

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
---@diagnostic disable-next-line: undefined-field
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{
			"Shatur/neovim-ayu",
			name = "ayu",
			lazy = false,
		},
		{
			"EdenEast/nightfox.nvim",
			name = "carbonfox",
			lazy = false,
		},
		{
			"catppuccin/nvim",
			name = "catppuccin",
			lazy = false,
		},
		{
			"lalitmee/cobalt2.nvim",
			name = "cobalt2",
			lazy = false,
		},
		{
			'Mofiqul/dracula.nvim',
			name = "dracula",
			lazy = false,
		},
		{
			"sainnhe/everforest",
			name = "everforest",
			lazy = false,
		},
		{
			"kepano/flexoki-neovim",
			name = "flexoki",
			lazy = false,
		},
		{
			"projekt0n/github-nvim-theme",
			name = "github-theme",
			lazy = false,
		},
		{
			"ellisonleao/gruvbox.nvim",
			name = "gruvbox",
			lazy = false,
		},
		{
			"rebelot/kanagawa.nvim",
			name = "kanagawa",
			lazy = false,
		},
		{
			"marko-cerovac/material.nvim",
			name = "material",
			lazy = false,
		},
		{
			"tanvirtin/monokai.nvim",
			name = "monokai",
			lazy = false,
		},
		{
			"oxfist/night-owl.nvim",
			name = "night-owl",
			lazy = false,
		},
		{
			"shaunsingh/nord.nvim",
			name = "nord",
			lazy = false,
		},
		{
			"navarasu/onedark.nvim",
			name = "onedark",
			lazy = false,
		},
		{
			"craftzdog/solarized-osaka.nvim",
			name = "osaka-jade",
			lazy = false,
		},
		{
			"drewtempelmeyer/palenight.vim",
			name = "palenight",
			lazy = false,
		},
		{
			"rose-pine/neovim",
			name = "rosepine",
			lazy = false,
		},
		{
			"maxmx03/solarized.nvim",
			name = "solarized",
			lazy = false,
		},
		{
			"lunarvim/synthwave84.nvim",
			name = "synthwave84",
			lazy = false,
		},
		{
			"folke/tokyonight.nvim",
			name = "tokyonight",
			lazy = false,
		},
		{
			"datsfilipe/vesper.nvim",
			name = "vesper",
			lazy = false,
		},
		{
			"phha/zenburn.nvim",
			name = "zenburn",
			lazy = false,
		},
		{
			"chaserensberger/christmas.nvim",
			name = "christmas",
			lazy = false,
		},
		{
			"zaldih/themery.nvim",
			lazy = false,
			config = function()
				require("themery").setup({
					themes = {
						{ name = "ayu",         colorscheme = "ayu" },
						{ name = "carbonfox",   colorscheme = "carbonfox" },
						{ name = "catppuccin",  colorscheme = "catppuccin" },
						{ name = "cobalt2",     colorscheme = "cobalt2" },
						{ name = "dracula",     colorscheme = "dracula" },
						{ name = "everforest",  colorscheme = "everforest" },
						{ name = "flexoki",     colorscheme = "flexoki" },
						{ name = "github",      colorscheme = "github_dark" },
						{ name = "gruvbox",     colorscheme = "gruvbox" },
						{ name = "kanagawa",    colorscheme = "kanagawa" },
						{ name = "material",    colorscheme = "material" },
						{ name = "monokai",     colorscheme = "monokai" },
						{ name = "nightowl",    colorscheme = "night-owl" },
						{ name = "nord",        colorscheme = "nord" },
						{ name = "one-dark",    colorscheme = "onedark" },
						{ name = "osaka-jade",  colorscheme = "solarized-osaka" },
						{ name = "palenight",   colorscheme = "palenight" },
						{ name = "rosepine",    colorscheme = "rose-pine" },
						{ name = "solarized",   colorscheme = "solarized" },
						{ name = "synthwave84", colorscheme = "synthwave84" },
						{ name = "tokyonight",  colorscheme = "tokyonight" },
						{ name = "vesper",      colorscheme = "vesper" },
						{ name = "zenburn",     colorscheme = "zenburn" },
						{ name = "christmas",   colorscheme = "christmas" }
					},
					livePreview = true,
				})
			end,
		},
		{ 'norcalli/nvim-colorizer.lua' },
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.8",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
		{
			"ThePrimeagen/harpoon",
			branch = "harpoon2",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
		},
		{
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		{
			'nvim-lualine/lualine.nvim',
			requires = { 'nvim-tree/nvim-web-devicons', opt = true }
		},
		{ "stevearc/conform.nvim" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-cmdline" },
		{ "hrsh7th/nvim-cmp" },
		{ "L3MON4D3/LuaSnip" },
		{ "rafamadriz/friendly-snippets" },
		{ "numToStr/Comment.nvim" },
		{ "m4xshen/autoclose.nvim" },
		{ "lewis6991/gitsigns.nvim" },
		{
			"nosduco/remote-sshfs.nvim",
			dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		},
		{
			"NickvanDyke/opencode.nvim",
			dependencies = {
				-- Recommended for `ask()` and `select()`.
				-- Required for `snacks` provider.
				---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
				{ "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
			},
			config = function()
				---@type opencode.Opts
				vim.g.opencode_opts = {}
				vim.o.autoread = true
				vim.keymap.set({ "n", "x" }, "<C-a>",
					function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode…" })
				vim.keymap.set({ "n", "x" }, "go", function() return require("opencode").operator("@this ") end,
					{ desc = "Add range to opencode", expr = true })
				vim.keymap.set("n", "goo", function() return require("opencode").operator("@this ") .. "_" end,
					{ desc = "Add line to opencode", expr = true })
			end
		},
		{
			"mfussenegger/nvim-dap",
			dependencies = {
				"rcarriga/nvim-dap-ui",
				"nvim-neotest/nvim-nio",
			},
		}
	},
	checker = { enabled = false },
})

if transparent then
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		if transparent then
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end
	end,
})

require("gitsigns").setup({
	current_line_blame = false,
	current_line_blame_opts = {
		virt_text_pos = 'eol',
		delay = 0,
	},
})

vim.keymap.set("n", "<leader>gb", function()
	require("gitsigns").toggle_current_line_blame()
end, { desc = "Toggle git blame" })

---@diagnostic disable-next-line: undefined-field
require('lualine').setup({
	sections = {
		lualine_x = {}
	}
})

require('colorizer').setup({
	'css',
	'javascript',
	html = {
		mode = 'foreground',
	}
})


require("remote-sshfs").setup()
local api = require("remote-sshfs.api")
vim.keymap.set("n", "<leader>rc", api.connect, {})

require("telescope").setup({
	pickers = {
		find_files = {
			hidden = true,
			no_ignore = true,
			file_ignore_patterns = { "^.git/", "^.venv/", "node_modules/" },
		},
		live_grep = {
			file_ignore_patterns = { "^.git/", "^.venv/", "node_modules/" },
		}
	},
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

---@diagnostic disable-next-line: missing-fields
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"markdown",
		"markdown_inline",
		"javascript",
		"typescript",
		"go",
		"html",
		"json",
		"css",
		"rust",
		"yaml",
		"scala",
		"python",
		"terraform",
		"cpp",
	},
	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
})

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "ts_ls", "gopls", "html", "cssls", "rust_analyzer", "clangd", "ruff" },
	automatic_installation = true,
	automatic_enable = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config.lua_ls = {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
}

vim.lsp.config.ruff = {
	capabilities = capabilities,
	init_options = {
		settings = {
			logLevel = "debug",
		},
	},
}

local servers_with_defaults = { "rust_analyzer", "ts_ls", "gopls", "html", "cssls", "clangd", "basedpyright" }

for _, server in ipairs(servers_with_defaults) do
	vim.lsp.config[server] = {
		capabilities = capabilities,
	}
end

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		html = { "prettierd" },
		json = { "prettierd" },
		css = { "prettierd" },
		go = { "gofumpt" },
		rust = { "rust-analyzer" },
		python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
		cpp = { "clang-format" },
	},
	formatters = {
		black = {
			prepend_args = { "--fast", "--target-version", "py312" },
		},
	},
	format_on_save = {
		timeout_ms = 5000,
		lsp_format = "fallback",
	},
})

require("Comment").setup()
vim.keymap.set("n", "<leader>/", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment on current line" })
vim.keymap.set(
	"v",
	"<leader>/",
	"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
	{ desc = "Toggle comment on selected lines" }
)

require("autoclose").setup()

vim.api.nvim_create_user_command("Reload", function()
	local cursor_position = vim.api.nvim_win_get_cursor(0)
	vim.cmd("edit!")
	vim.api.nvim_win_set_cursor(0, cursor_position)
end, {})

local function disable_lsp()
	local clients = vim.lsp.get_clients({ bufnr = 0 })
	if #clients > 0 then
		for _, client in ipairs(clients) do
			vim.lsp.stop_client(client.id)
		end
		print("LSP disabled for current buffer")
	end
end

vim.api.nvim_create_user_command("DisableLSP", disable_lsp, {})

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typst", {
	s("a", {
		t("#action["),
		t({ "", "  " }),
		i(0, "action"),
		t({ "", "]" }),
	}),
	s("d", {
		t("#dialogue_block["),
		t({ "", "  " }),
		i(0),
		t({ "", "]" }),
	}),
	s("s", {
		t('#scene("'),
		i(0, "scene"),
		t({ '")' }),
	}),
	s("l", {
		t("#line["),
		i(0, "line"),
		t({ "]" }),
	}),
	s("c", {
		t('#character("'),
		i(0, "character"),
		t({ '")' }),
	}),
	s("p", {
		t('#parenthetical("'),
		i(0, "parenthetical"),
		t({ '")' }),
	}),
	s("start", {
		t('#import "template.typ": *'),
		t({ "", "" }),
		t({ "", "" }),
		t("#show: screenplay.with("),
		t({ "", '  title: "' }),
		i(0, "title"),
		t('"'),
		t({ "", ")" }),
	}),
})

vim.keymap.set("i", "<C-k>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end, { silent = true })

local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>ha", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<leader>hm", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

for i = 1, 6 do
	vim.keymap.set("n", string.format("<leader>h%d", i), function()
		harpoon:list():replace_at(i)
	end)
	vim.keymap.set("n", string.format("<leader>hd%d", i), function()
		harpoon:list():remove_at(i)
	end)
	vim.keymap.set("n", string.format("<leader>%d", i), function()
		harpoon:list():select(i)
	end)
end

vim.keymap.set("n", "<leader>hc", function()
	for i = 1, 6 do
		harpoon:list():remove_at(i)
	end
end)

local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

dap.adapters.delve = {
	type = 'server',
	port = '${port}',
	executable = {
		command = 'dlv',
		args = { 'dap', '-l', '127.0.0.1:${port}' },
	}
}

dap.configurations.go = {
	{
		type = "delve",
		name = "Debug",
		request = "launch",
		program = "${file}"
	}
}

vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<leader>du", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<leader>dt", function()
	dap.terminate()
	dapui.close()
end, { desc = "Terminate" })
vim.keymap.set("n", "<leader>dd", dapui.toggle, { desc = "Toggle DAP UI" })
vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
