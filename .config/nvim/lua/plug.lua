-- [[ plug.lua ]]

-- Automatically install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plug.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Install plugins
return packer.startup(function(use)
    
    use "wbthomason/packer.nvim" -- Have packer manage itself

    -- Dev Utilities
    use { 
        "kyazdani42/nvim-tree.lua", -- nvim-tree
        requires = "kyazdani42/nvim-web-devicons" 
    }
    use {
        "nvim-telescope/telescope.nvim", -- fuzzy finder
        requires = {
            { "nvim-lua/plenary.nvim" }
        }
    }
    use { "Yggdroot/indentLine" } -- see indentations
    use { "tpope/vim-fugitive" } -- git integration
    use { "junegunn/gv.vim" } -- commit history
    use { "windwp/nvim-autopairs" } -- auto close brackets
    use {
        "iamcco/markdown-preview.nvim", -- markdown previewer
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" }
    }

    -- Theme
    use { "ellisonleao/gruvbox.nvim" } -- gruvbox
    use { "mhinz/vim-startify" } -- startify
    use { "DanilaMihailov/beacon.nvim" } -- beacon
    use { 
        "nvim-lualine/lualine.nvim", -- lualine 
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true
        }
    }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
