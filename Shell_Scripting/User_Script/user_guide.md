
# User Account Management Script

## Overview
This Bash script allows you to manage user accounts easily. It provides options to create, delete, reset passwords, and list all user accounts on the system.

## Note
- Mkaesure to run this script as root or using sudo.
- Use sudo to prevent error.
- Makesure the system supports useradd, userdel, and chpasswd commands.

## Usage
Run the script as follow:

### 1. Display Help
```
sudo ./user_management.sh -h
```
This will display usage information and available options.

### 2. Create a New User
```bash
sudo ./user_management.sh -c
```
- You will be prompted to enter a username.
- If the username is available, you will be prompted to enter a password.
- The user account will be created and a created message will be displayed.

### Output
```bash
Enter new username: testuser
Enter password: ********
User 'testuser' created successfully.
```

### 3. Delete an Existing User
```bash
sudo ./user_management.sh -d
```
- You will be prompted to enter the username of the account to delete.
- If the username exists, the account will be removed and a confirmation message will be displayed.

### Output 
```bash
Enter username to delete: testuser
User 'testuser' deleted successfully.
```

### 4. Reset a User's Password
```bash
sudo ./user_management.sh -r
```
- You will be prompted to enter the username and a new password.
- If the username exists, the password will be updated successfully.

### Output
```bash
Enter username to reset password: testuser
Enter new password: ********
Password for user 'testuser' reset successfully.
```

### 5. List All Users
```bash
sudo ./user_management.sh -l
```
- This will list all user accounts.

### Output
```bash
Listing all user accounts:
Username: root - UID: 0
Username: testuser - UID: 1001
```











