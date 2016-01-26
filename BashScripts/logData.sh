unparsed=$(cat /sys/bus/w1/devices/28-0000075c293f/w1_slave)
test=$($unparsed | head -n 1 | tail -c 4)
data=$($unparsed | tail -n 1 | tail -c 6)
if [ "$test" == "YES" ]; then
  "echo" "-e" "Data received."
  "echo" "-e" "$data"
else
  "echo" "-e" "Read failure"
fi
