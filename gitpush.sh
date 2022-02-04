#!/bin/bash
#!/usr/bin/expect

# GITHUB_URL="https://oceansgamedev@github.com/oceansgamedev/TheElectronics.git"
# PASSWD="dhtusrpdla1!"

echo "\n"
echo "****************"
echo "*** Git Push ***"
echo "****************"
echo "\n"

git push https://oceansgamedev@github.com/oceansgamedev/TheElectronics.git

func_gitpush() {

expect <<EOF
spawn git push $GITHUB_URL
expect "Password"
send $PASSWD\r
expect eof

EOF

}

# func_gitpush