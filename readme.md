Install brew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install zsh and oh-my-zsh

```
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install missing plugins for zsh

```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

Then logout to make zsh default shell.

Install tmux and tmux plugin manager

```
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Connect dot files via symlinks

```
source symlink_config_files.sh
```

And then

```
# type this in terminal if tmux is already running
$ tmux source ~/.tmux.conf
```

Install nvm

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

Install clipboard manager 

```
https://apps.apple.com/pk/app/copyclip-clipboard-history/id595191960?mt=12
```

Install plugin for internet bandwidth monitor

```
https://apps.apple.com/pk/app/bandwidth/id490461369?mt=12
```

Install vim-anywhere
```
brew install --cask macvim
curl -fsSL https://raw.github.com/cknadler/vim-anywhere/master/install | bash
```

Install stoic thoughts, library at:

```
	url = https://github.com/SargeKhan/stoic-thoughts
```

Install neovim:
```
brew install neovim
```

Ensure .vim and nvim use the same config
```
mkdir -p .config/nvim/init.vim
```
and put this in the file
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```
