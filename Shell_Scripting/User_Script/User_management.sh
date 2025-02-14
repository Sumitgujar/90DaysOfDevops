#!/bin/bash

# Function to create a new user
create_user() {
    read -p "Enter new username: " username
    read -sp "Enter password: " password
    echo ""
    sudo useradd -m "$username"
    echo "$username:$password" | sudo chpasswd
    echo "User '$username' created successfully."
}

# Function to delete an existing user
delete_user() {
    read -p "Enter username to delete: " username
    sudo userdel -r "$username"
    echo "User '$username' deleted successfully."
}

# Function to reset a user's password
reset_password() {
    read -p "Enter username to reset password: " username
    read -sp "Enter new password: " password
    echo ""
    echo "$username:$password" | sudo chpasswd
    echo "Password for user '$username' reset successfully."
}

# Function to list all users
list_users() {
    echo "Listing all user accounts:"
    awk -F: '{ print "Username: "$1" - UID: "$3 }' /etc/passwd
}

# Display help message
cat <<HELP
Usage: $0 [OPTION]
Options:
  -c, --create   Create a new user account
  -d, --delete   Delete an existing user account
  -r, --reset    Reset the password of an existing user account
  -l, --list     List all user accounts
  -h, --help     Display this help message
HELP

case "$1" in
    -c|--create)
        create_user
        ;;
    -d|--delete)
        delete_user
        ;;
    -r|--reset)
        reset_password
        ;;
    -l|--list)
        list_users
        ;;
    -h|--help)
        exit 0
        ;;
    *)
        echo "Invalid option. Use -h or --help for usage information."
        exit 1
        ;;
esac
