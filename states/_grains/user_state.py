import os


def user_state():
    grains = {}
    # Some code for logic that sets grains like
    grains["homedir"] = os.path.expandvars("$HOME")
    grains["configdir"] = os.path.expandvars("$HOME/.config")
    grains["statesdir"] = os.path.expandvars("$HOME/git/dotfiles/states")
    return grains
