# Bash Scripting Notes

## 1) Shebang

```bash
#!/bin/bash
```
- The shebang tells the system to run the script with the Bash shell.
It makes sure the correct interpreter is used, ensuring consistent and reliable behaviour across different environments.

## 2)

```bash
chmod +x script.sh   # Enable execution permissions
./script.sh          # Launch the script
```
## 3)
```
# comment
````
- Comments are used to explain what the code does and to facilitate collaboration.
## 4) Variables

````
greeting="Hello family!"
echo $greeting
````
- Variables are strings numbers or filename. It allows your script to store data, reuse it throughout the script, and modify it as needed, making your code more flexible and efficient.

## 6) If statments

example:

#!/bin/bash
age=77

if [ $age -gt 18 ] #opens if statment
then 
 echo "You are an adult!" # code block to be executed
fi #closes if statement
  
