local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer... Please re-open Neovim when the installation has finished." 
	vim.cmd [[packadd packer.nvim]]
end
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

return packer.startup(function(use)
	--
	use "wbthomason/packer.nvim" 
	use "nvim-lua/popup.nvim"
	use "nvim-lua/plenary.nvim"
	use "windwp/nvim-autopairs"
	use "kyazdani42/nvim-web-devicons"
	use "kyazdani42/nvim-tree.lua"
	use "nvim-lualine/lualine.nvim"
	
	use "folke/tokyonight.nvim"

	use "hrsh7th/nvim-cmp" 
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "saadparwaiz1/cmp_luasnip"
	use "hrsh7th/cmp-nvim-lsp"

	use "L3MON4D3/LuaSnip" 
	use "rafamadriz/friendly-snippets" 

	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"
	use "jose-elias-alvarez/null-ls.nvim"

	use "nvim-telescope/telescope.nvim"
	use {
		"nvim-treesitter/nvim-treesitter",
	}

	-- 
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
