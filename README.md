Setup
-----

1. Checkout this repo somewhere like `~/zsh`
1. Install [Oh My Zsh!](https://ohmyz.sh/)
1. Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme
1. Run `p10k configure`
   - Here are the settings I used (copied from the comment in `~/.p10k.zsh`):
   ```
   # Wizard options: nerdfont-complete + powerline, small icons, classic, unicode, dark,
   # 12h time, angled separators, sharp heads, flat tails, 1 line, compact, many icons,
   # concise, instant_prompt=verbose.
   ```
1. Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh) plugin
1. Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) plugin
1. Enable plugins (see [Plugins Reference](#plugins-reference))
1. Install [lsd](https://github.com/Peltoche/lsd) (makes `ls` much prettier)
1. Install java versions (and update the switching commands in [zshrc.sh](zshrc.sh) as necessary)
1. Install pyenv to manage python
1. Add the following to the end of `~/.zshrc`:
   ```
   # Load my stuff
   source <this-repo>/*.sh
   ```

Plugins Reference
-----------------
This is what the `plugins=` field should look like in `~/.zshrc`:
```
plugins=(
    git
    zsh-autosuggestions
    kubectl
    zsh-syntax-highlighting # This one has to go last
)
```
