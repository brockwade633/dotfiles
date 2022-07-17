# dotfiles
A set of basic dot files for shell and neovim configuration: 

- zsh
- oh-my-zsh
- powerlevel10k
- neovim
- tmux

To build a complete shell config from fresh installations on macOS, execute the following steps. Otherwise any individual files or snippets can be taken and added to other existing environments or operating systems.

#### Clone Repo and Run Script
```bash
# clone dotfiles
git clone https://github.com/brockwade633/dotfiles.git

# enter repo
cd dotfiles

# execute fresh installs, reload shell with the new dotfiles
./reload-config.sh
```

#### Sync Neovim Plugins
To make sure all the plugins are installed, open `plug.lua` and run `luafile %` to source, then `:PackerInstall` and/or `:PackerSync` to bring down the plugins. Run `:PackerStatus` to verify they're all there. Some plugins may require manually loading before syncing again: `:PackerLoad <plugin>`.

#### Font
Follow [these instructions](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) to install the `MesloLGS NF` font and use it in your terminal of choice.

#### Optional
Run `nvim` on `vim` commands
```bash
ln -s (which nvim) /usr/local/bin/vim
```
