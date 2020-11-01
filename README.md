# Dotfiles
This is a collection of my personal dotfiles.

# Setup
The following are required to run any state or bootstrap a new system

## Homebrew
```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## SaltStack
```bash
$ brew install salt
```

## Dotfile Directory Location
This checked out directory is expected to be checked out in `$HOME/git/dotfiles`, 
which is required for the Salt grain `statesdir`.

# Bootstrapping
Begin by sourcing the local [environment.sh](./environment.sh) file to set the `sc` alias and sync
required custom grains.

```bash
$ source environment.sh
Setting custom salt-call to alias 'sc'
Syncing custom grains to local cachedir...
local:
    - grains.user_state
```

## Running a single state
You can run a single state with the following...
```bash
$ sc state.apply git
```

Bootstrap the entire system with the following...
```bash
$ sc state.highstate
```

# Credits
Much of this taken from [casperstorm/dotfiles](https://github.com/casperstorm/dotfiles), thanks!
