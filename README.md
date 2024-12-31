# Dotfiles

This is a collection of my personal dotfiles and quickstart to get up and running on a new system.

## Quickstart

The following is intended to get things up and running quickly, we will:

1. Install Homebrew (OSX Package Manager), or 'brew'
1. Using brew, install packages defined in Brewfile
1. Using Ansible (installed via Homebrew) install configurations

```bash
# Runs 'brew bundle' and 'ansible-playbook'
$ ./install.sh
```

# Bootstrapping

## Neovim
Install `neovim` via `pip3` then:

1. Launch `vim`
2. Run `:PlugUpdate`
3. Run `:UpdateRemotePlugins`

## OSX

Within Finder press `Command+Shift+Dot` to show hidden files, this will be needed for importing color themes into iTerm2. Current preference is `materialshell-dark`

## Code

Install 'code' binary in PATH

1. Launch VS Code.
2. Open the Command Palette (Cmd+Shift+P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command.


# Updating
Running the 'update.sh' script will update packages installed via Brew.

It will also install any new packages that have since been defined in Brewfile.
```bash
$ ./update.sh
```
