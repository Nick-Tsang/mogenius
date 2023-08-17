#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bdfc8e18-3a71-42a0-89e5-934a8a5b2765"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

