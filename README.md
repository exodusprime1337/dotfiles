# MacOS new machine basic setup

## What is this for?
Setting up a new mac can be cumbersome. This collection of playbooks and a .zshrc are used
to ensure that each new mac is set up consistently. 

This setup environment relies on GNU stow to replicate certain folders and files up one directory to the root of the home folder. From there you can run the ansible playbook in this repository to installed the below listed apps.

Oh My Posh is installed here, in the `.config/ohymyposh/` folder is a `config.json` or `config.toml` file. You can replace the contents of this file with any theme you'd like to change look and feel of the terminal. Make sure to edit the .zshrc to target your particular profile. 

## What is installed with this repository?
### Desktop Apps
- slack
- iterm2
- VSCode
- MacPass
- Postman
- Firefox
- Chrome
- Maccy
- Rectanble
- Discord

### Terminal Apps
- Oh My Posh
- ZSH AutoSuggestions
- ZSH Autocomplete
- HTOP
- BPYTOP
- bat
- eza
- RipGrep
- TLDR
- AWSCLI

### Developer Tools
- NVM
    - NVM Docs: https://github.com/nvm-sh/nvm
- Pyenv
    - Pyenv Docs: https://github.com/pyenv/pyenv
- Pyenv VirtualEnv
    - Pyenv Virtenv Docs: https://github.com/pyenv/pyenv-virtualenv
- UV python package manager
    - UV Docs: https://github.com/astral-sh/uv
- Docker Desktop

## Prerequisite software. 
1. Install homebrew
    - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Install stow
    - `brew install stow`
3. Install ansible
    - `brew install ansible`

## Steps to get up and running
After installing the prerequisite software contine with the following steps. 
1. Clone this repo into your home folder.
2. CD into repo directory.
3. Run the following command to "stow" your files using GNU stow.
    - `stow .`

    **NOTE: If you see an error related to files already present you can run the below command to "adopt" the files, then restore the repository and run it again.**
    - `stow --adopt *`
    - `git restore .`
    - `stow .`
4. Run the ansible playbook inside of this repository.
    - `ansible-playbook ./ansible/setup_mac.yml -K`
5. Open iterm2 and set up your profile. 
    - Open settings, then profile, then text.
    - Set font to Firacode Nerdfont Mono.
    - Click checkbox for font ligatures to enable them.

## Optional configuration tasks
Clear the dock of all icons by running this in the terminal.
- `defaults write "com.apple.dock" "persistent-apps" -array; killall Dock`
