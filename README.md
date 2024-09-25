# MacOS New machine basic setup

## Prerequisite software. 

1. Install homebrew
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Install stow
- `brew install stow`
3. Install ansible
- `brew install ansible`
4. Install iterm2
- `brew install --cask iterm2`
5. Download and install vscode. 
- [Download Here](https://www.genome.gov/)

## Steps to get up and running
After installing the prerequisite software contine with the following steps. 
1. Clone this repo into your home folder
2. CD into repo directory
3. Run the following commands to stow your dotfiles in your home folder
 - `stow --adopt *`
 - `git restore .`
 - `stow .`
4. Run the ansible playbook inside of this repository
- `ansible-playbook setup_mac.yml -K`
5. Open iterm2 and set up your profile. 
    - Open settings, then profile, then text.
    - Set font to Firacode Nerdfont Mono
    - Click checkbox for font ligature to enable them
