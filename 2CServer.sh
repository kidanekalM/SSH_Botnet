botIps=(
    "192.168.10.11"
    "192.168.10.12"
)
echo "Enter the command to be executed by bots: "
read userCommand
for botIp in "${botIps[@]}"
do
    echo "$botIp"
    # Connect via SSH and ping the IP
    ssh "$botIp" ${userCommand}
done
# Read from list
#       e.g list of all hosts [192.168.10.1 . . . ]
# connect 
#       e.g telnet 192.168.0.1 
# send commands  
#       e.g. ping 192.168.0.1 -c 1000
