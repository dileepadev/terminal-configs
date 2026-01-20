# Ubuntu Terminal Configs

This folder contains my Ubuntu terminal setup using **Zsh**, **Oh My Zsh**, **Starship**, and custom plugins & theme to make the terminal beautiful and productive.

## Table of Contents

- [Ubuntu Terminal Configs](#ubuntu-terminal-configs)
  - [Table of Contents](#table-of-contents)
  - [📌 What goes where](#-what-goes-where)
  - [🛠 Setup Overview](#-setup-overview)
  - [📥 Installation (Ubuntu)](#-installation-ubuntu)
    - [1. Install Zsh](#1-install-zsh)
    - [2. Install Oh My Zsh](#2-install-oh-my-zsh)
    - [3. Copy Config Files](#3-copy-config-files)
    - [4. Install Plugins](#4-install-plugins)
    - [5. Fonts (Optional but recommended)](#5-fonts-optional-but-recommended)
    - [6. Load Your Config](#6-load-your-config)
  - [📌 Notes](#-notes)
  - [🎨 Customize Further](#-customize-further)
    - [🖌 Using a Custom Zsh Theme](#-using-a-custom-zsh-theme)
      - [1. Place Your Theme File](#1-place-your-theme-file)
      - [2. Make Oh My Zsh Aware of Your Theme](#2-make-oh-my-zsh-aware-of-your-theme)
      - [3. Activate Your Theme](#3-activate-your-theme)
      - [4. Reload Zsh](#4-reload-zsh)
      - [5. Optional Enhancements](#5-optional-enhancements)

## 📌 What goes where

| File / Folder | Purpose | Destination (Linux) |
| ------------- | ------- | ------------------- |
| `.zshrc` | Your Zsh configuration | `~/.zshrc` |
| `plugins/` | Cloned Zsh plugins you installed | `~/.oh-my-zsh/custom/plugins/` |
| `themes/*.zsh-theme` | Custom Zsh themes | `~/.oh-my-zsh/custom/themes/` |
| `themes/starship.toml` | Starship configuration | `~/.config/starship.toml` |
| `README.md` | Instructions & explanation | N/A |

## 🛠 Setup Overview

This setup includes:

- **Zsh** – An improved shell (instead of Bash)
- **Oh My Zsh** – A framework for managing Zsh config
- **Powerlevel10k** – A beautiful and customizable prompt theme
- **Plugins:**

  - `zsh-autosuggestions` — Suggests commands as you type
  - `zsh-syntax-highlighting` — Highlights syntax in the command line
  - `zsh-bat` — Replaces the `cat` command with **[bat](https://github.com/sharkdp/bat)** and enhances file viewing

## 📥 Installation (Ubuntu)

Here’s how to replicate this setup on a fresh Ubuntu install.

### 1. Install Zsh

```bash
sudo apt update
sudo apt install zsh
```

Make Zsh your default shell:

```bash
chsh -s $(which zsh)
```

Logout & login again, then verify:

```bash
echo $SHELL
# Should print something like /usr/bin/zsh
```

### 2. Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/oh-my-zsh/master/tools/install.sh)"
```

### 3. Copy Config Files

Copy the configuration and theme files from this repo to your home directory:

```bash
# Copy .zshrc
cp ubuntu-terminal/.zshrc ~/

# Copy custom Zsh theme
mkdir -p ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes
cp ubuntu-terminal/themes/*.zsh-theme ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/

# Copy Starship config
mkdir -p ~/.config
cp ubuntu-terminal/themes/starship.toml ~/.config/starship.toml
```

### 4. Install Plugins

Clone the plugins into your Oh My Zsh **custom plugins** directory:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/fdellwing/zsh-bat.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-bat
```

**About `zsh-bat`**

- This plugin integrates the modern **[`bat`](https://github.com/sharkdp/bat)** command into your Zsh session.
- When enabled, it **replaces the `cat` command with `bat`**, giving you **syntax‑highlighted, paged file content** by default.
- You can still use the original `cat` behavior via the `rcat` command if needed.

### 5. Fonts (Optional but recommended)

Install a **Nerd Font** (like Meslo, FiraCode Nerd, or others) and set it in your terminal emulator. This ensures icons and special characters in your prompt (especially Powerlevel10k) display correctly.

### 6. Load Your Config

Reload Zsh:

```bash
source ~/.zshrc
```

Or just open a new terminal.

## 📌 Notes

- `~/.zshrc` enables your plugins and sets the theme.
- The `plugins/` folder holds the plugin code so anyone can replicate the exact setup.

## 🎨 Customize Further

- Run `p10k configure` to re‑customize the prompt interactively.
- Add or remove plugins by editing the `plugins=(...)` line in `.zshrc`.
- Consider additional tools like `fzf` or `exa` for an even richer experience.

### 🖌 Using a Custom Zsh Theme

You can create your own theme instead of using Powerlevel10k or other pre-made themes.

#### 1. Place Your Theme File

1. Create a `themes/` folder inside your repo if it doesn’t exist:

    ```bash
    mkdir -p ~/ubuntu-terminal/themes
    ```

2. Save your theme file there, for example:

    ```text
    ~/ubuntu-terminal/themes/mytheme.zsh-theme
    ```

#### 2. Make Oh My Zsh Aware of Your Theme

**Option A — Copy to custom themes folder:**

```bash
cp ~/ubuntu-terminal/themes/mytheme.zsh-theme ~/.oh-my-zsh/custom/themes/
```

**Option B — Keep in repo and add to fpath:**

```bash
fpath=(~/ubuntu-terminal/themes $fpath)
```

Place this line **before `ZSH_THEME=`** in your `~/.zshrc`.

#### 3. Activate Your Theme

Edit `~/.zshrc`:

```zsh
ZSH_THEME="mytheme"
```

> Do not include the `.zsh-theme` extension.

#### 4. Reload Zsh

```bash
source ~/.zshrc
```

Or open a new terminal — your **custom theme** should now be active.

#### 5. Optional Enhancements

- Use **Nerd Fonts** for icons and symbols.
- Add dynamic segments: Git branch, Python virtualenv, Kubernetes context, battery, etc.
- Test multi-line prompts for better readability.
- Keep your theme in your repo so it’s version-controlled and shareable.
