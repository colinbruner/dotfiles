export ASDF_CONFIG_FILE="$CONFIG/asdf/.asdfrc"
if [[ -d $HOME/.asdf ]]; then
    . $HOME/.asdf/asdf.sh
    . $HOME/.asdf/completions/asdf.bash
fi
