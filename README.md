# ghpr.nvim 🚀

A minimal Neovim plugin to instantly open the GitHub Pull Request associated with the current line of code.

## ⚡️ Features
- **Git Blame Integration**: Automatically finds the commit hash for the current line.
- **GitHub CLI Powered**: Uses `gh` to resolve the specific Pull Request.
- **Fast & Lightweight**: Written in 100% Lua with zero bloat.

## 📋 Requirements
- [GitHub CLI (gh)](https://github.com/cli/cli) installed and authenticated (`gh auth login`).
- [Git](https://git-scm.com/) installed.

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "IbraheemHaseeb7/ghpr.nvim",
  keys = {
    { "<leader>gp", "<cmd>OpenPR<cr>", desc = "Git: Open PR for line" },
  },
}
