# 00-login.zsh

###
# Login Scripts
###
LOGIN_SCRIPTS=".config/op/plugins.sh"

for loginScript in $LOGIN_SCRIPTS; do
  if [[ -f $loginScript ]]; then
    . $HOME/$loginScript
  fi
done
#######
# SSH #
#######

# NOTE: Keys are handled by 1Password SSH Agent, this is kept for reference / legacy purposes
function _startSSHAgent {
  echo ${1:-"Starting ssh-agent"}
  eval $(ssh-agent -s | tee ~/.ssh/environment)
  for key in $(find $HOME/.ssh/ -name "id_*" ! -name "*.pub"); do ssh-add $key; done
}

function start_ssh_agent() {
  # Check to see if agent is running, 1 for no identities added, 0 for identities added
  ssh-add -l &>/dev/null 
  if [[ $? != 0 ]]; then
      # Source ssh-agent environment file
      if [ -f ~/.ssh/environment ]; then 
        # Source current ssh-agent environment, then check for staleness
        source ~/.ssh/environment >/dev/null
        if ! kill -0 $SSH_AGENT_PID &>/dev/null; then
            _startSSHAgent "Stale agent file found. Spawning new agent… "
        fi
      else
        # Start SSH Agent if a ssh-agent environment file is not found.
          _startSSHAgent
      fi
  fi
}

# NOTE: Handled by 1password agent
#start_ssh_agent

# NOTE: This is deprecated, was used in static reference for tmux, at one point.
# Predictable SSH authentication socket location.
#if [[ -S "$SSH_AUTH_SOCK" && ! -h "$SSH_AUTH_SOCK" ]]; then
#    ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_socket
#    export SSH_AUTH_SOCK=~/.ssh/ssh_auth_socket
#fi

#######
# GPG #
#######
[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
## Export GPG_AGENT_INFO socket file
[ -S "${GPG_AGENT_INFO%%:*}" ] && export GPG_AGENT_INFO
## Start Agent
[[ $(pgrep gpg-agent) ]] || eval $( gpg-agent --daemon )

