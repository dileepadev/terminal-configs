# Creating Your Own Custom Oh My Zsh Theme

This guide explains how to build a **personalized Zsh theme** for your Ubuntu terminal setup using **Oh My Zsh**, without relying on pre-made themes like Powerlevel10k, Starship or Oh My Posh.

## 🛠 Step 1 — Create Your Theme File

1. Make a new theme file:

    ```zsh
    mkdir -p ubuntu-terminal/themes
    touch ubuntu-terminal/themes/mytheme.zsh-theme
    ```

2. Open `mytheme.zsh-theme` and start with a simple prompt:

```zsh
# ~/.oh-my-zsh/custom/themes/mytheme.zsh-theme

# Left prompt (PS1)
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %# '

# Right prompt (optional)
RPROMPT='%F{magenta}[%*]%f'
```

* `%F{color}` — set foreground color
* `%f` — reset color
* `%n` — username
* `%m` — hostname
* `%~` — current directory
* `%#` — `#` if root, `%` if normal user
* `%*` — current time

## 🛠 Step 2 — Add Git Branch (Optional)

To display the current Git branch, define a small function in your theme:

```zsh
git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  [[ -n $branch ]] && echo "[$branch]"
}

PROMPT='%F{cyan}%n@%m%f:%F{yellow}%~%f $(git_branch) %# '
```

This will dynamically show the Git branch only when inside a Git repository.

## 🛠 Step 3 — Add Nerd Font Icons (Optional)

If you installed a Nerd Font, you can add symbols:

```zsh
PROMPT='%F{green}%n@%m%f %F{blue}%~%f $(git_branch) ⚡ %# '
```

* Example symbols: `➜`, `❯`, `⚡`
* Make your prompt visually appealing and easy to scan.

## 🛠 Step 4 — Use Multi-Line Prompt (Optional)

```zsh
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f
$(git_branch) %# '
```

* First line: username, host, current directory
* Second line: Git branch or other dynamic info
* `%#` for the command symbol

## 🛠 Step 5 — Load Your Custom Theme in Zsh

1. Place your theme file in a path Oh My Zsh can read:

```zsh
fpath=(~/ubuntu-terminal/themes $fpath)
```

1. Set your theme in `.zshrc`:

```zsh
ZSH_THEME="mytheme"
```

1. Reload your Zsh configuration:

```zsh
source ~/.zshrc
```

## 🎨 Tips for Your Custom Theme

* **Start simple**: username, host, and current directory.
* **Add dynamic segments gradually**: Git branch, Python virtualenv, Kubernetes context, battery, etc.
* **Use colors and symbols**: Nerd Fonts give a modern look.
* **Functions for dynamic info**: You can call functions in your prompt to show real-time data.
* **Test often**: Reload Zsh after every change to tweak spacing, colors, or symbols.

## ⚡ Optional Enhancements

* Use `RPROMPT` for right-aligned info (like time, last command status, CPU usage).
* Conditional segments: show info only when relevant (`if [[ -d .git ]]; then ...`).
* Multi-line prompts for clarity and better readability.
* Combine with your existing plugins (`zsh-autosuggestions`, `zsh-syntax-highlighting`, `zsh-bat`) for a fully productive terminal.
