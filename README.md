# dotfiles
A set of basic dot files for shell and neovim configuration: 

- zsh
- oh-my-zsh
- powerlevel10k
- neovim
- tmux

Run `reload-config.sh` to build a complete shell config from fresh installations on macOS, otherwise any individual files or snippets can be taken and added to other existing environments or operating systems.

After entering nvim for the first time, run `:PackerInstall` and/or `:PackerSync` to make sure all the plugins are installed. Run `:PackerStatus` to verify they're all there.
