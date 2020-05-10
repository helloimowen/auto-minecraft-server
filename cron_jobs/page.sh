SERVER_STATUS=`sudo service minecraft status`

SUB='Active: active (running) since'


if [[ "$SERVER_STATUS" == *"$SUB"* ]]; then
  echo "found substring"
fi
