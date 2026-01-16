# Terminal Configs

Welcome to my personal terminal configuration repository! This collection contains configuration files, scripts, and themes designed to create a productive, beautiful, and efficient terminal experience.

## Table of Contents

- [Terminal Configs](#terminal-configs)
  - [Table of Contents](#table-of-contents)
  - [Screenshots](#screenshots)
  - [Features](#features)
  - [Prerequisites](#prerequisites)
  - [Current Versions](#current-versions)
  - [Installation](#installation)
  - [Font Details](#font-details)
  - [Repository Structure](#repository-structure)

## Screenshots

PowerShell with Oh My Posh Theme:

![PowerShell Screenshot](https://dileepadev.github.io/images/terminal-configs/powershell-oh-my-posh.png)

## Features

- **Shell Configuration**: Optimized setups for PowerShell / Bash.
- **Prompt Customization**: Custom themes using [Oh My Posh](https://ohmyposh.dev/).
- **Visuals**: Color schemes, font configurations, and layout settings.

## Prerequisites

Before using these configurations, ensure you have the following installed:

- A terminal emulator (e.g., Windows Terminal).
- A [Nerd Font](https://www.nerdfonts.com/) (recommended for icons).
- [Git](https://git-scm.com/).
- [Oh My Posh](https://ohmyposh.dev/).

## Current Versions

- PowerShell: `7.5.4`

    ```powershell
    pwsh --version
    ```

- Windows Terminal: 123.13503.0

    ```powershell
    wt --version
    ```

- Oh My Posh: `26.14.3`
  
    ```powershell
    oh-my-posh --version
    ```

- Git: `git version 2.52.0.windows.1`

    ```bash
    git --version
    ```

- Nerd Fonts: v3.4.0

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/dileepadev/terminal-configs.git
    cd terminal-configs
    ```

2. **Install Fonts:**
    - Download and install your preferred Nerd Font (e.g., Cascadia Code NF, Meslo LGM NF).
    - Configure your terminal to use this font.

3. **Apply Configurations:**
    - Copy the contents of `PowerShell/` to your PowerShell profile directory (usually `Documents/PowerShell`).
    - Copy the contents of `WindowsPowerShell/` to your Windows PowerShell profile directory (usually `Documents/WindowsPowerShell`).
    - Ensure the paths in `Microsoft.PowerShell_profile.ps1` point to the correct location of `dileepadev.omp.json`.

## Font Details

In this version, I use the **Caskaydia Cove Nerd Font** for its clean look and excellent readability. You can download it from the [Nerd Fonts website](https://www.nerdfonts.com/font-downloads).

## Repository Structure

Below are the main directories and their purposes:

```text
terminal-configs/
├── PowerShell/         # PowerShell Core (pwsh) configuration
├── WindowsPowerShell/  # Windows PowerShell configuration
└── ...
```
