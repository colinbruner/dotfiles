# gcp.zsh

export USE_GKE_GCLOUD_AUTH_PLUGIN=true
export PATH="$PATH:$HOME/.bin/google-cloud-sdk/bin/"

function gcp-config-activate {
  case $1 in
    default)
      gcloud config configurations activate default
      ;;
    personal)
      gcloud config configurations activate personal
      ;;
    *)
      echo "Available GCP Accounts to activate are 'default' and 'personal'"
  esac
}

export CLOUDSDK_PYTHON="/Users/${USER}/.pyenv/shims/python"

###
# gcloud
###
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/colin.bruner/.bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/colin.bruner/.bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/colin.bruner/.bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/colin.bruner/.bin/google-cloud-sdk/completion.zsh.inc'; fi
