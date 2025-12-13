# Level 3: Conditional Statements

## Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. If it does, print Hero found!; otherwise, print Hero missing!.

Level-3-conditional-statments.md



````
#!/bin/bash

if [ -f Arena/hero.txt ]; then

 echo "Hero found"

 else

 echo "Hero missing"

fi

`````
