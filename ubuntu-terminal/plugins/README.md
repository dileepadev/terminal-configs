# Plugins

This directory contains instructions or submodules for the Zsh plugins used in this configuration.

## Used Plugins

The following plugins are enabled in `.zshrc`:

1. **[git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)**
    - Standard Oh My Zsh plugin for Git integration (aliases, prompt info).
    - *Included with Oh My Zsh.*

2. **[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)**
    - Suggests commands as you type based on history and completions.
    - *Installation:*

      ```bash
      git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
      ```

3. **[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)**
    - Provides fish-shell-like syntax highlighting for Zsh.
    - *Installation:*

      ```bash
      git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
      ```

4. **[zsh-bat](https://github.com/fdellwing/zsh-bat)**
    - Integrates `bat` (a `cat` clone with syntax highlighting) with Zsh.
    - *Installation:*

      ```bash
      git clone https://github.com/fdellwing/zsh-bat.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-bat
      ```
