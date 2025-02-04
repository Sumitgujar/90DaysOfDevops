
#  **Linux Commands**

These are some of the basic Linux commands covering system-level operations, user and group management, and file permissions.

## **Contents**
- System-Level Commands
- User and Group Management
- File Permission Commands


## **System-Level Commands**

###  `ls` (List Directory Contents)
- Lists files and directories in the current directory.
- Example: `ls`

###  `pwd` (Print Working Directory)
- Displays the full path of the current directory.
- Example: `pwd`

###  `cd` (Change Directory)
- Navigates between directories.
- Example: `cd /home/user/Documents/`

###  `mk/mkdir` (Make Files or Directory)
- Creates a new file or directory.
- Example: `mkdir folder_name`

### `rm/rmdir` (Remove Files or Directories)
- Deletes files or directories.
- Example: `rmdir -r folder_name` (removes a directory and its contents).

###  `cp` (Copy Files and Directories)
- Copies files and directories.
- Example: `cp file.txt  destination  path/`

###  `mv` (Move/Rename Files)
- Moves or renames files.
- Example: `mv file.txt path </home/user/Documents/>`
- Example: `mv oldname.txt newname.txt`

###  `cat` (Display Files)
- Displays file contents.
- Example: `cat file.txt`

###  `grep` (Search Text in Files)
- Searches for patterns in files.
- Example: `grep 'error' logfile.txt`

###  `top` (System Monitor)
- Displays running processes and system performance.
- Example: `top`

## **User and Group Management**

###  `adduser` (Add a New User)
- Creates a new user.
- Example: `adduser username`

###  `userdel` (Delete a User)
- Removes a user.
- Example: `userdel username`

###  `usermod` (Modify User Account)
- Modifies user information.
- Example: `usermod -aG groupname username` (adds user to the sudo group).

###  `passwd` (Change User Password)
- Sets or changes a user password.
- Example: `passwd username`

###  `groupadd` (Create a New Group)
- Adds a new group.
- Example: `groupadd mygroup`

###  `groupdel` (Delete a Group)
- Removes a group.
- Example: `groupdel mygroup`

## **File Permission Commands**

###  `ls- l` (View File Permissions)
- Displays file permissions.
- Example:`ls -l` (It shows detailed listing with permissions, owner, size, and date).

###  `chmod` (Change File Permissions)
- Modifies file permissions.
- Example: `chmod 755 file.sh`
- **Output after command:**
- `-rw-r--r-- 1 user user 1234 Jan 1 12:00 file.txt`

###  `chown` (Change Ownership)
- Changes file ownership.
- Example: `chown user:group file.txt`

###  `umask` (Default Permissions)
- Sets default permissions.
- Example: `umask 022`
                                                                   
###  `stat` (File Information)
- Displays detailed file info.
- Example: `stat file.txt`

###  `find` (Search for Files)
- Searches for files based on criteria.
- Example: `find /home -name "file.txt"`

###  `touch` (Create Empty File)
- Creates a new empty file.
- Example: `touch newfile.txt`
