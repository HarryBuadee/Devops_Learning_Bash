# Bash Scripting Cheatsheet

A concise reference for Bash scripting basics, suitable for beginners and intermediate users.


## 1. Shebang
```
#!/bin/bash
Specifies which shell executes the script.
```
2. Comments
bash
```
# This is a comment
Used to explain code; ignored by Bash.
````
3. Variables
```
bash
Copy code
name="Alice"
echo "Hello, $name"
Store values for reuse.
````
4. Make & Run Scripts
```
bash
Copy code
chmod +x script.sh
./script.sh
```
Give execute permission and run scripts.

5. User Input

```bash
Copy code
read -p "Enter name: " username
echo "Hello, $username"
```
Get input from the user interactively.

6. Arithmetic
```bash
Copy code
a=5
b=3
echo $((a + b))
Perform integer math directly in Bash.
````
7. For Loop
```bash
Copy code
for i in 1 2 3; do
  echo $i
done
`````
Repeat commands for each item in a list.

8. While Loop
```bash
Copy code
count=1
while [ $count -le 5 ]; do
  echo $count
  ((count++))
done
````
Repeat commands while a condition is true.

9. If Statement
```bash
Copy code
if [ $x -gt 10 ]; then
  echo "x > 10"
fi
```
Execute code based on a condition.

10. If…Elif…Else
````bash
Copy code
if [ $x -lt 0 ]; then
  echo "Negative"
elif [ $x -eq 0 ]; then
  echo "Zero"
else
  echo "Positive"
fi
````
Choose between multiple conditions.

11. Case Statement
```bash
Copy code
case $num in
  1) echo "One";;
  2) echo "Two";;
  *) echo "Other";;
esac
```
Compare a value against multiple options.

12. Functions
```bash
Copy code
greet() { echo "Hello, $1"; }
greet "Alice"
````
Reusable blocks of code.

13. Arrays
````bash
Copy code
fruits=("apple" "banana" "cherry")
echo "${fruits[0]}"   # apple
echo "${fruits[@]}"   # all elements
````
Store and manage multiple related values.

14. Continue
```bash
Copy code
for i in {1..5}; do
  [ $i -eq 3 ] && continue
  echo $i
done
```
Skip the current iteration but continue the loop.

15. Break
```bash
Copy code
for i in {1..5}; do
  [ $i -eq 3 ] && break
  echo $i
done
```
Exit a loop immediately.

16. Nested If
bash
Copy code
if [ $x -gt 0 ]; then
  if [ $x -lt 10 ]; then
    echo "x is between 1 and 9"
  fi
fi
Test multiple conditions inside each other.

17. set Commands
bash
Copy code
set -euo pipefail
# -e: exit on error
# -u: treat unset variables as error
# -o pipefail: fail if any command in a pipeline fails
Make scripts more robust and safer.

18. Exit Codes
bash
Copy code
if [ -f file.txt ]; then
  exit 0
else
  exit 1
fi
Communicate success (0) or failure (non-zero).

19. Error Handling
bash
Copy code
set -e
mkdir /restricted_area   # script stops if this fails
echo "This will not run if the above fails"
Stop script execution on errors.

20. Common Test Conditions
bash
Copy code
# File/Directory tests
[ -f file.txt ] && echo "File exists"
[ -d dir ] && echo "Directory exists"

# String tests
[ -z "$var" ] && echo "Empty"
[ "$a" = "$b" ] && echo "Match"

# Integer tests
[ $x -gt 10 ] && echo "x > 10"
[ $x -le 5 ] && echo "x <= 5"
