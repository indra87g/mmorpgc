# MMORPGC

[![wakatime](https://wakatime.com/badge/user/e3628b6b-08c8-497a-a679-c268fa16d35e/project/a5edd2f8-034d-4548-8fc0-9689dc5128b9.svg)](https://wakatime.com/badge/user/e3628b6b-08c8-497a-a679-c268fa16d35e/project/a5edd2f8-034d-4548-8fc0-9689dc5128b9)

A MMORPG game that written in C.

## How To Compile
```sh
# Run build script
bash build.sh

# Run 
bin/mmorpgc

# Preparation before commit (Delete all binary file)
make clean
```
*To generate object, install `graphviz` first!
```sh
# Install
apt update --fix-missing
apt install graphviz

# It will allow you to use "dot" command
```

Continue: 22. Client-server outbuf.c line 61