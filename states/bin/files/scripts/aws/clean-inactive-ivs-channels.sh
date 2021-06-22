

ALL_CHANNELS=$(aws ivs list-channels | jq -r ".channels[].arn")
LIVE_CHANNELS=$(aws ivs list-streams | jq -r ".streams[].channelArn")

read -p "Clean IVS Channels? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
for chan in $ALL_CHANNELS; do 
  UUID=$(echo $chan | cut -d/ -f 2)
  echo $LIVE_CHANNELS | grep -q $UUID
  if [[ $? == 1 ]]; then
    echo "NOT LIVE: Deleting Channel => ${chan}"
    aws ivs delete-channel --arn ${chan}
  fi
done
