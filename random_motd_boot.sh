#!/bin/bash


MOTDS=(
"Also try FreeBSD"
"Now with IPv6 support"
"I'm in"
"Approved by some"
"Change this message by editing /etc/mood"
"Support free software" "To GNU or not to GNU, there lies the question"
"We <3 Tux"
"Running since 1970"
"Password too short, please change"
"Doas>Sudo"
"Now with 40% more 1s and 40% less 0s"
"Production machine please don't mess up"
"Kernel changelog: Added 3 easter eggs to the kernel panic screen"
"Root is always watching"
"CTRL-D to continue"
"[ ] Please complete the captcha"
"> Hack mainframe.py.sh.php.css"
"I know what I'm doing, don't worry"
"Stop the experimentation for free cake"
"It's been [0] days since accidentally rm -rf /-ing the whole system"
"I swear I'm not a hacker"
"Do no hack"
"I'ts ok, I love you too"
"$ man woman"
"Down the electric avenue"
"unregistered OpenSSH_10.0p2"
)

array_size=${#MOTDS[@]}
random_index=$((RANDOM % array_size))
random_string=${MOTDS[random_index]}
echo > /etc/motd
echo "$random_string" >> /etc/motd
echo >> /etc/motd
