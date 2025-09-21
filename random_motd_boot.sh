#!/bin/bash

# All our MOTDs, Bash doesn't need commas.
MOTDS=(

# Computer stuff
"Now with IPv6 support"
"I'm in"
"Approved by some"
"Change this message by editing /etc/mood"
"Support free software"
"To GNU or not to GNU, there lies the question"
"We <3 Tux"
"Running since 1970"
"Password too short, please change"
"Doas > Sudo"
"Now with 40% more 1s and 40% less 0s"
"Production machine please don't mess up"
"Kernel changelog: Added 3 easter eggs to the kernel panic screen"
"Root is always watching"
"CTRL-D to continue"
"[ ] Please complete the captcha"
"> Hack mainframe.py.sh.php.css"
"I know what I'm doing, don't worry"
"It's been [0] days since accidentally rm -rf /-ing the whole system"
"I swear I'm not a hacker"
"Do no hack"
"$ man woman"
"Unregistered OpenSSH_10.0p2"
"It works on my machine"
"Looks good to me!"

# Possibly controversial - You might want to remove these
"I'm not a furry but Xenia's got something ngl"
"Who's a good girl? Yes, you! You are!"
"Femboy radar enabled... BEEP BEEP BEEP BEEP"
"Damn baby you've got that sigma gyatt"

# General non-computer stuff
"It's ok, I love you too"
"Mommy is proud <3"
"[x] Fight [ ] Bag [ ] Run"
"You're breaking my heart </3"
"This is not a place of honor. Nothing of value is here. What is here was repulsive to us."
"There was an error loading this motd file: I'm unMOTDtivated... haha, get it?"
"How was your day, dear?"
"#MadeWithNoAI"

# Also try
"Also try FreeBSD"
"Also try Plan9!"
"Also try Solaris!"
"Also try MacOS!"

# Pop culture references
"The Matrix has you, Neo."
"This Linuxing session is going to be Legend... Wait for it... -dary!"
"I see dead people"
"I must scream but I've got no mouth"
"I survived the Among Us brainrot and I got was this lousy line on my /etc/motd"
"Dear <<Subject Name Here>>,"
"You just had to follow the damn train, CJ!"
"For the good of all of us... Except the ones who are dead... But there's no sense crying over every mistake"
"Stop the experimentation for free cake"
"We do what we must because we can"

# Music references
"21st night of September"
"We didn't start the fire"
"'Cause I'm a Freeeeee Bird yeaaaaah"
"Down the electric avenue"

# The political stuff
"B.L.M!"
"Support Trans Rights!"
"Fuck the fascists!"
"Love Thy Neighbor, even if thy neighbor is gay"
"Open borders for all"
"No one is illegal"
"Love eachother"
"Fight for feminism"

)

array_size=${#MOTDS[@]} # Get the size of the array
random_index=$((RANDOM % array_size)) # Pick one at random using the $RANDOM variable
random_string=${MOTDS[random_index]} # Pick that line from the array
echo "$random_string"
echo > /etc/motd # Newline starts the motd file over
echo "$random_string" >> /etc/motd # Add the random string to the motd file
echo >> /etc/motd # A another newline, for readability
