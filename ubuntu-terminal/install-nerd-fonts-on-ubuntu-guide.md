# 📘 Guide: Install Nerd Fonts on Ubuntu

**Purpose:** Install patched fonts that include extra icons/glyphs used by modern terminal prompts (like Starship). Nerd Fonts bundle many developer icon sets together.

## 🧠 What Are Nerd Fonts?

Nerd Fonts are **programming fonts patched with a huge set of extra glyphs and icons** (e.g., Font Awesome, Devicons, Powerline). These are useful in terminal prompts, file explorers, and code editors.

## 🛠️ Step 1 — Install Dependencies

Open a terminal and run:

```zsh
sudo apt update
sudo apt install curl unzip fontconfig -y
```

* **curl**: for downloading files
* **unzip**: to extract font packages
* **fontconfig**: to refresh font cache

## 📥 Step 2 — Download & Install a Nerd Font

1. Create your local fonts folder:

   ```zsh
   mkdir -p ~/.local/share/fonts
   cd ~/.local/share/fonts
   ```

2. Download a Nerd Font package (example: FiraCode):

   ```zsh
   curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
   ```

3. Extract and clean up:

   ```zsh
   unzip FiraCode.zip
   rm FiraCode.zip
   ```

💡 You can replace `FiraCode.zip` with any other Nerd Font from the official list.

## 🔄 Step 3 — Refresh the Font Cache

Tell Ubuntu to recognize the new fonts:

```zsh
fc-cache -fv
```

## 🖥️ Step 4 — Select the Font in Your Terminal

1. Open **GNOME Terminal** (or your terminal app).
2. Go to **Preferences → Profile → Text → Custom Font**.
3. Choose the Nerd Font you installed (e.g., *FiraCode Nerd Font*).

**Tip:** Restart your terminal if the font doesn’t show immediately.

## 🎉 Result

Your terminal now has access to Nerd Font glyphs, meaning icons used by terminals and tools (e.g., status symbols in Starship) will display correctly.
