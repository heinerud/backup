ip=$(echo $SSH_CONNECTION | cut -d " " -f 1)
host=$(hostname)
msg="$host: user $USER just logged in from $ip"
token=<your-bot-token>
chat_id=<your-user-number>

curl -s "https://api.telegram.org/bot$token/sendMessage?chat_id=$chat_id&text=$msg" > /dev/null
