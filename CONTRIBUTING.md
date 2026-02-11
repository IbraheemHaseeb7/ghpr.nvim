```markdown
# Contributing to ghpr.nvim

First off, thank you for considering contributing! It's people like you that make the Neovim ecosystem great.

## How to Contribute

### 🐛 Reporting Bugs
- Check the current Issues to see if the bug has already been reported.
- If not, open a new issue with steps to reproduce the problem and your `:checkhealth` info.

### 💡 Pull Requests
1. **Fork the repo** and create your branch from `main`.
2. **Make your changes**. If you added a new feature, please update the README.
3. **Format your code** using [StyLua](https://github.com/JohnnyMorganz/StyLua) if possible.
4. **Submit the PR** with a clear description of what you fixed or added.

## Development Setup
To test your changes locally, point your plugin manager to your local path:

**Lazy.nvim:**
```lua
{ dir = "~/path/to/your/local/pr-opener.nvim" }
