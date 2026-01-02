
## Mission: Create a directory named Arena and then inside it, create three files: warrior.txt, mage.txt, and archer.txt. List the contents of the Arena directory.
```` 
#!/bin/bash

mkdir Arena
touch warrior.txt mage.txt archer.txt
mv warrior.txt mage.txt archer.txt arena/
ls Arena
archer.txt  mage.txt  warrior.txt
`````
