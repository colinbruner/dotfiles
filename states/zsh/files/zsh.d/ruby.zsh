#ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.

#To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
# to your ~/.zshrc:
#NOTE: this noticably increases login time to new shells, thus commented out
#export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Load rbenv automatically by appending
# the following to ~/.zshrc:
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias be="bundle exec"
