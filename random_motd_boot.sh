#!/bin/bash

# All our MOTDs, Bash doesn't need commas.
MOTDS=(
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
"Unregistered OpenSSH_10.0p2"
"It works on my machine"
"For the good of all of us... Except the ones who are dead... But there's no sense crying over every mistake"
"Looks good to me!"
"We do what we must because we can"
"Mommy is proud <3"
"Also try FreeBSD"
"Also try Plan9!"
"Also try Solaris!"
"Also try MacOS!"
"[x] Fight [ ] Bag [ ] Run"
"Dear <<Subject Name Here>>,"
"You just had to follow the damn train, CJ!"
"You're breaking my heart </3"
"I must scream but I've got no mouth"
"This is not a place of honor. Nothing of value is here. What is here was repulsive to us."
"Fuck the fascists!"
)

array_size=${#MOTDS[@]} # Get the size of the array
random_index=$((RANDOM % array_size)) # Pick one at random using the $RANDOM variable
random_string=${MOTDS[random_index]} # Pick that line from the array
echo "$random_string"
echo > /etc/motd # Newline starts the motd file over
echo "$random_string" >> /etc/motd # Add the random string to the motd file
echo >> /etc/motd # A another newline, for readability
