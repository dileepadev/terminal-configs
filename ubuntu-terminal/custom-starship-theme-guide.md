# 🚀 Custom Starship Theme Configuration (`starship.toml`)

Create or edit your file:

```zsh
nano ~/.config/starship.toml
```

Then paste the example configuration.

## 🛠 What This Does

### 📌 Layout & Structure

* **Multiple lines**: first line shows time and environment info, second shows directory and git info, third the prompt arrow.
* **Order defined with `format`** — you can rearrange modules by changing that line.

## 🧩 Modules Explained

### 🕒 **Time**

Shows clock with styled text.

### 🧠 **Environment Variables**

Only shown if a specific variable is defined (here `SHELL`), useful for showing k8s context, AWS profile, etc.

### 📁 **Directory**

Current directory — truncated to git root if applicable.

### 🌿 **Git Branch + Status**

Shows branch plus icons for staged/modified/untracked changes.

### 🧪 **Custom Command Module (`git_server`)**

Runs your script to detect the Git hosting provider (like GitHub/GitLab) when inside a Git repo. Shows the output in prompt.

## 🎨 Icons & Style Notes

✔ Icons require a patched Nerd Font (like FiraCode Nerd).
✔ Styles like `bold cyan`, `yellow bold`, etc., use Starship’s style syntax.

## 🎛 Tips for Further Customization

### 📌 Add or remove modules easily

To disable modules:

```toml
[time]
disabled = true
```

### 🌀 Add Rust, Go, Docker, or Kubernetes modules

Just copy the patterns above and set:

```toml
[rust]
symbol = "🦀 "
format = "[$symbol $version]($style) "
```

## 🧪 Test Your Changes

After saving the file, reload Zsh:

```zsh
source ~/.zshrc
```

Or open a new terminal session.
