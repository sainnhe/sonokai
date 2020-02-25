# Syntax Highlighting

The syntax highlighting is implemented by [zdharma/fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting). By using `default` theme with any terminal emulator color scheme of sonokai, you can get a sonokai syntax highlighting theme of zsh.

# Prompt

The prompt theme is sonokai version of pure power, it depends on [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k).

To use it, simply source this file in your zshrc after powerlevel10k has been load:

```sh
source /path/to/sonokai/zsh/.zsh-theme-sonokai-shusia
# or
source /path/to/sonokai/zsh/.zsh-theme-sonokai-andromeda
# or
source /path/to/sonokai/zsh/.zsh-theme-sonokai-atlantis
# or
source /path/to/sonokai/zsh/.zsh-theme-sonokai-maia
```

Alternatively, if you are using [zplugin](https://github.com/zdharma/zplugin), you can install the theme like this:

```zsh
zplugin light romkatv/powerlevel10k

# shusia variant
zplugin snippet https://github.com/sainnhe/sonokai/blob/master/zsh/.zsh-theme-sonokai-shusia

# andromeda variant
zplugin snippet https://github.com/sainnhe/sonokai/blob/master/zsh/.zsh-theme-sonokai-andromeda

# atlantis variant
zplugin snippet https://github.com/sainnhe/sonokai/blob/master/zsh/.zsh-theme-sonokai-atlantis

# maia variant
zplugin snippet https://github.com/sainnhe/sonokai/blob/master/zsh/.zsh-theme-sonokai-maia
```

## Customization

There are three modes of this prompt theme:

```zsh
PURE_POWER_MODE=modern    # use nerdfont characters in the prompt
PURE_POWER_MODE=fancy     # use unicode characters in the prompt(default)
PURE_POWER_MODE=portable  # use only ascii characters in the prompt
```

To switch between them, edit `/path/to/sonokai/zsh/.zsh-theme-*`, and change the value of `PURE_POWER_MODE`.
