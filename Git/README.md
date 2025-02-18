# **Git Guide**
## What is Git?
Git is a distributed version control system that helps developers track changes in their code, collaborate efficiently, and manage different versions of a project. It allows multiple developers to work on the same project without conflicts and provides tools for merging changes seamlessly.

## Installing Git
### Linux OS
```sh
sudo apt update
sudo apt install git
```


## Configuring Git
```sh
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --global core.editor "vim"
```

## **Basic Git Commands**
### Initializing a Repository
```sh
git init
```

### Cloning a Repository
```sh
git clone <repository_url>
```

### Checking Status
```sh
git status
```

### Adding Files to Staging
```sh
git add <file>
git add .  # It add all files
```

### Committing Changes
```sh
git commit -m "Your commit message"
```

### Viewing Commit History
```sh
git log
```

## **Branching & Merging**
### Creating and Switching Branches
```sh
git branch <branch_name>
git checkout <branch_name>
git switch <branch_name>  
```

### Merging Branches
```sh
git checkout main
git merge <branch_name>
```

### Deleting Branches
```sh
git branch -d <branch_name>
```

## **Working with Remote Repositories**
### Adding a Remote Repository
```sh
git remote add origin <repository_url>
```

### Pushing Changes
```sh
git push origin <branch_name>
```

### Pulling Changes
```sh
git pull origin <branch_name>
```

### Fetching Changes
```sh
git fetch
```



## **Conclusion**
Git is a powerful tool for version control, and mastering these commands will help you collaborate effectively in development projects. Keep practicing and explore more advanced Git features!
