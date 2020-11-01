#rite-env-file login.zsh

##################
## Login Scripts #
##################
# Check to see if agent is running, 1 for no identities added, 0 for identities added
ssh-add -l &>/dev/null 
if [[ $? != 0 ]]; then
    # Automatically start SSH Agent on boot when no previous .agent.env file is found
    if [[ -f ~/.agent.env ]]; then
        . ~/.agent.env > /dev/null
        if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
            echo "Stale agent file found. Spawning new agent… "
            eval `ssh-agent | tee ~/.agent.env`
            ssh-add
            for key in $HOME/.ssh/id_rsa*; do if [[ $key != *"pub" ]]; then ssh-add $key; fi; done
        fi
    else
        echo "Starting ssh-agent"
        eval `ssh-agent | tee ~/.agent.env`
        ssh-add > /dev/null 2>&1
        for key in $HOME/.ssh/id_rsa*; do if [[ $key != *"pub" ]]; then ssh-add $key; fi; done
    fi
fi

# Predictable SSH authentication socket location.
SOCK="/tmp/ssh-agent-$USER-screen"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ];then
    rm -f /tmp/ssh-agent-$USER-screen
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi

# GPG
[ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
   export GPG_AGENT_INFO
else
   eval $( gpg-agent --daemon )
fi

