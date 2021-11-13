Install vim plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install tmux plugin manager

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
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

Enable gestures on ubuntu by installing and following the guidelines this:

```
https://github.com/Hikari9/comfortable-swipe
```

Install copyQ

```
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install copyq
```

Install plugin for internet bandwidth monitor

```
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update && apt install indicator-netspeed
```

Install vim-anywhere

```
curl -fsSL https://raw.github.com/cknadler/vim-anywhere/master/install | bash
```

Swap escape with capslock in ubuntu

```
setxkbmap -option caps:swapescape
```

Install stoic thoughts, library at:

```
	url = https://github.com/SargeKhan/stoic-thoughts
```
