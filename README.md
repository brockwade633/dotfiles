# dotfiles
A set of basic dot files for shell and neovim configuration: 

- zsh
- oh-my-zsh
- powerlevel10k
- neovim
- tmux

To build a complete shell config from fresh installations on macOS, execute the following steps. Otherwise any individual files or snippets can be taken and added to other existing environments or operating systems.

#### Clone Repo
```bash
git clone https://github.com/brockwade633/dotfiles.git
```

#### Run Script
The following script will execute fresh installs of the above tools, reload the shell with the new dotfiles, and clean up the cloned repo at the end.
```bash
./reload-config.sh
```

#### Install Neovim Plugins
After entering nvim for the first time, run `:PackerInstall` and/or `:PackerSync` to make sure all the plugins are installed. Run `:PackerStatus` to verify they're all there. Some plugins may require manually loading: `:PackerLoad <plugin>`.

#### Optional
**Run `nvim` on `vim` commands**
```bash
ln -s (which nvim) /usr/local/bin/vim
```
