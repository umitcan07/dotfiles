# Dotfiles - Umit Can Evleksiz

MacBook config backup before reset. Created 2026-05-13.

## Restore Steps

1. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `brew bundle --file=Brewfile`
3. Install Oh My Zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
4. Install Powerlevel10k: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
5. Install NVM: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash`
6. Install Rust: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
7. Install Miniconda: `https://docs.conda.io/en/latest/miniconda.html`
8. Symlink/copy config files from this repo to `~`
9. Regenerate npm token and update `~/.npmrc`
10. Regenerate SSH key: `ssh-keygen -t ed25519` and add to GitHub

## Structure

```
dotfiles/
  Brewfile           # brew bundle (formulae, casks, vscode extensions)
  shell/
    .zshrc           # main shell config (omz, p10k, nvm lazy-load, conda, pnpm)
    .zprofile         # brew + macports path setup
    .zshenv          # cargo env
    .p10k.zsh        # powerlevel10k theme config
  git/
    .gitconfig       # git-lfs, user, core settings
  ssh/
    config           # github.com -> id_ed25519
  zsh_custom/
    rgp.zsh          # ripgrep .prefab search function
```

## Installed Applications

### macOS Apps (/Applications)
- **Adobe Creative Suite**: After Effects, Audition, Illustrator, InDesign, Media Encoder, Premiere Pro 2025
- **Browsers**: Arc, Firefox, Google Chrome, Ecosia, Chromium-GOST
- **Dev Tools**: Cursor, VS Code, IntelliJ IDEA, Rider, Docker, Fork (git), Ghostty (terminal), Postman, MySQL Workbench, Wireshark, Xcode
- **Design**: Figma, Figma Beta, Inkscape, Pencil, Cinema 4D
- **Communication**: Slack, Discord, Telegram, WhatsApp, Zoom, TeamViewer
- **Productivity**: Raycast, Obsidian, Logseq, Anytype, Linear, Notion Calendar, Setapp
- **Media**: Spotify, IINA, foobar2000, Flacbox, Evermusic, Nulloy, MacWhisper
- **Engineering**: MATLAB R2024b & R2025a, Praat, Unity Hub
- **Utilities**: coconutBattery, LocalSend, OmniDiskSweeper, noTunes, ProtonVPN, AWS VPN Client
- **Office**: Keynote, Numbers, Pages, Microsoft Word, LibreOffice

### Homebrew Formulae (key ones)
- **Languages**: python@3.12/3.13/3.14, node, openjdk, sbcl, swi-prolog
- **Dev tools**: gh, git-lfs, lazygit, biome, cmake, ripgrep, flyctl, doppler
- **Databases**: mysql, postgresql@15, mongodb-community, mongosh
- **Media**: ffmpeg, imagemagick, espeak-ng, bandcamp-dl
- **Shell**: zsh-autocomplete, zsh-autosuggestions, zsh-syntax-highlighting, zsh-you-should-use
- **Docs**: hugo, pandoc, texlive, weasyprint, graphviz, ghostscript
- **Hardware**: icarus-verilog, open-mpi, gcc

### Runtime Managers
- **NVM**: Node v22.12.0 (default)
- **Miniconda**: conda + mamba
- **Cargo/Rustup**: Rust toolchain
- **pyenv**: (if installed)
- **pnpm**: via ~/Library/pnpm

### VS Code Extensions
See `Brewfile` (157 lines of `vscode "..."` entries)
