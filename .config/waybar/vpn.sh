stat=$(ping -q -w 3 -c 1 10.5.0.2 | sed -n 4p)
if [ "$stat" == '1 packets transmitted, 1 received, 0% packet loss, time 0ms' ]; then
    echo '{"text":"Connected","class":"connected","percentage":100}'
else
    echo '{"text":"Disconnected","class":"disconnected","percentage":0}'
fi
