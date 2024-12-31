
# NOTE: Waiting on this to be out of public beta
# https://developer.1password.com/docs/cli/shell-plugins/terraform/
if [[ $(uname) == "Darwin" ]] && [[ -n $(which op) ]]; then
  export AWS_ACCESS_KEY_ID=$(op read "op://homelab/AWS Access Key/access key id")
  export AWS_SECRET_ACCESS_KEY=$(op read "op://homelab/AWS Access Key/secret access key")
  export AWS_REGION="us-east-2"
fi