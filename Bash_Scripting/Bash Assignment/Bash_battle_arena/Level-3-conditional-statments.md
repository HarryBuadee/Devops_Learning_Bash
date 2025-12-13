# Level 3: Conditional Statements

## Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. If it does, print Hero found!; otherwise, print Hero missing!.


````
#!/bin/bash

if [ -f Arena/hero.txt ]; then

 echo "Hero found"

 else

 echo "Hero missing"

fi

`````


To make the file an executable:

````
chmod +x Level_3_conditional_statements.sh
````


To run the file .\Level_3_conditional_statements.sh
