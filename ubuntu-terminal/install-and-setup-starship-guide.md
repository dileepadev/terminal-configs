# 📗 Guide: Install & Set Up Starship Prompt on Ubuntu

**Purpose:** Install Starship — a fast, customizable shell prompt — and enable it so you get rich, contextual information in your terminal.

## 🚀 Step 1 — Install Starship

Run the official installer script:

```zsh
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
```

This fetches and installs the Starship binary.

## 🐚 Step 2 — Enable Starship in Your Shell

### ✔ For **Zsh** users

Open your `~/.zshrc` file in a text editor or terminal:

```zsh
nano ~/.zshrc
```

Add the following to the end of your `~/.zshrc`:

```zsh
if command -v starship > /dev/null; then
    eval "$(starship init zsh)"
fi
```

Then **reload your config**:

```zsh
source ~/.zshrc
```

💡 Starship also supports Bash, Fish, PowerShell, etc. — you just replace `zsh` with your shell name.

## 🧠 Step 3 — (Optional) Create a Configuration File

Starship looks for its config in:

```zsh
~/.config/starship.toml
```

Create it with:

```zsh
mkdir -p ~/.config
touch ~/.config/starship.toml
```

You can then define your layout, colors, symbols, and modules here.

## ⭐ Step 4 — (Optional) Use Nerd Font Symbols

Starship provides a **preset to use Nerd Font glyphs** in your prompt. Generate it with:

```zsh
starship preset nerd-font-symbols -o ~/.config/starship.toml
```

This writes a config that uses Nerd Font icons for many modules.

## 🔄 Step 5 — Reload Your Terminal

Close and reopen your terminal (or re‑source your shell config). You should now see the **Starship prompt with icons and info** (like directory, git status, versions, etc.).

## 🧪 Tips

* Make sure your terminal’s **font is set to a Nerd Font** (installed from the first guide). Otherwise, some icons may show as squares or missing characters.
* You can customize `starship.toml` to change colors, modules, and layout as you like.
