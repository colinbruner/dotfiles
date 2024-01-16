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