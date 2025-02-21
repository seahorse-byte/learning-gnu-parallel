
# Title: Essential Linux Commands - Quick Guide

## Like with everything we can do man `<command>` which stands for manual

- echo - Prints text to terminal | echo "Hello, World!"

- touch - Creates an empty file | touch newfile.txt

- `> - Redirects output + Overwrites file with output | echo "Hello" > file.txt`

- `>> - Redirects output + Appends output to a file | echo "New line" >> file.txt`

- mv - Moves/Renames files | mv old.txt new.txt

- date - Displays current date/time | date
- cat - Reads and outputs file contents | cat file.txt

- wc - Counts words, lines, characters | wc file.txt

- time - Measures command execution time | time ls

- openssl - Encrypts/Decrypts data | openssl rand -base64 32

- printf - Prints formatted text | printf "Hello, %s!\n" "World"

- rm - Removes files or directories | rm file.txt| rm -rf *.mp4

- cp - Copies files or directories probely_create_target.sh ../../../sharing-sessions

- | - The pipe operator (|) chains commands together. It takes the output of one command and feeds it as input to the next command. `date | xargs echo`
