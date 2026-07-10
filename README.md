# dotfiles

Personal macOS dotfiles. Each config lives in this repo and is symlinked into
place, so edits are version-controlled and shared across machines.

## What's inside

| Repo file | Symlinked to | Purpose |
|-----------|--------------|---------|
| `zshrc` | `~/.zshrc` | Zsh + oh-my-zsh, lazy-loaded version managers, consolidated `PATH` |
| `vimrc` | `~/.vimrc` | Vim configuration |
| `bash_profile` | `~/.bash_profile` | Bash login shell |
| `gemrc` | `~/.gemrc` | RubyGems defaults |
| `railsrc` | `~/.railsrc` | Rails `new` defaults |
| `starship.toml` | `~/.config/starship.toml` | Starship prompt (two-line, language versions, git, clock) |
| `alacritty/alacritty.toml` | `~/.config/alacritty/alacritty.toml` | Alacritty terminal (font, imports theme) |
| `alacritty/tokyo-night.toml` | `~/.config/alacritty/alacritty.toml` import | Tokyo Night color scheme |

Config paths use `$HOME` / relative imports rather than a hardcoded home
directory, so nothing embeds the username.

## Install

```sh
git clone git@github.com:crazylion/my-dot-file.git ~/project/my-dot-file
cd ~/project/my-dot-file

ln -sf "$PWD/zshrc"        ~/.zshrc
ln -sf "$PWD/vimrc"        ~/.vimrc
ln -sf "$PWD/bash_profile" ~/.bash_profile
ln -sf "$PWD/gemrc"        ~/.gemrc
ln -sf "$PWD/railsrc"      ~/.railsrc

mkdir -p ~/.config ~/.config/alacritty
ln -sf "$PWD/starship.toml"             ~/.config/starship.toml
ln -sf "$PWD/alacritty/alacritty.toml"  ~/.config/alacritty/alacritty.toml
ln -sf "$PWD/alacritty/tokyo-night.toml" ~/.config/alacritty/tokyo-night.toml
```

## Requirements

- **Zsh + [oh-my-zsh](https://ohmyz.sh/)** — base shell framework.
- **[Starship](https://starship.rs/)** — prompt (`brew install starship`).
- **A Nerd Font** — required for the icons in the Starship prompt.
  `brew install --cask font-meslo-lg-nerd-font`, then set your terminal font to
  **MesloLGS Nerd Font** (Alacritty is already configured to use it).
- Optional, lazy-loaded on first use: `nvm`, `rvm`, `sdkman`, `puro`.

## Notes

- **Machine-local secrets** (e.g. SSH host/port/user aliases) live in
  `~/.zsh_private`, which is **not** tracked here. `zshrc` sources it if present.
- Version managers are lazy-loaded (defined as shell functions that source the
  real init script on first call) to keep shell startup fast.
- **Do not run `alacritty migrate`** — it rewrites the config in place and
  replaces the symlink with a regular file.
