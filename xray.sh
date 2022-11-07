#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a5ee029c-3503-4a01-9940-e7adfda1035c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

