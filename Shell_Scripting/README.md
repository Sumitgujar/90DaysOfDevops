# Shell Scripting Guide


##  Introduction
Shell scripting is a powerful way to automate tasks in Unix/Linux environments. This repository provides examples, tutorials, and best practices for writing shell scripts.


##  Creating and Executing a Shell Script

### **Creating a Shell Script File**
Use a text editor like `nano`, `vim`, or `touch` to create a script file:
```bash
touch script.sh
nano script.sh
```
Add the following content to your script:
```bash
#!/bin/bash
echo "Hello, World!"
```
Save the file and exit.

### **Making the Script Executable By File Permission**
```bash
chmod 777 script.sh
```

### **Executing the Script**
```bash
./script.sh
```

##  Basic Shell Commands and Arguments
- `echo "Hello, World!"` → Prints text to the terminal.
- `ls -l` → Lists files in long format.
- `pwd` → Prints the current working directory.
- `cd /path/to/directory` → Changes the working directory.
- `mkdir new_folder` → Creates a new directory.
- `rm -rf folder_name` → Removes a directory and its contents.

- `grep 'word' file.txt` → Searches for a word in a file.





