
# **Linux User & SSH Configuration Task**

## **1. Task**
- Create a user `devops_user` and add them to a group `devops_team`.
- Set a password and grant sudo access.
- Restrict SSH login for certain users in `/etc/ssh/sshd_config`.

### 1. **Create a User (`devops_user`) and Add to a Group (`devops_team`)**
```bash
sudo groupadd devops_team   # Create the group if it doesn’t exist
sudo useradd -m -G devops_team devops_user  # Create user and add to group
```

### 2. **Set a Password for `devops_user`**
```bash
sudo passwd devops_user
```

### 3. **Grant `sudo` Access**
```bash
sudo usermod -aG sudo devops_user  # Add user to the sudo group
```

### 4. **Restrict SSH Login for User**
Edit the SSH configuration file using **Vim**:
```bash
sudo vim /etc/ssh/sshd_config
```
- **To deny SSH access to specific users** (e.g., `user1`, `user2`):
  ```plaintext
  DenyUsers user1 user2
  ```
- **To allow only specific users** (e.g., `devops_user`, `admin_user`):
  ```plaintext
  AllowUsers devops_user admin_user
  ```

 - If `AllowUsers` is set, only those users can log in via SSH.

### 5. **Restart SSH Service to Apply Changes**
```bash
sudo systemctl restart sshd
```

---

## **Verification**
### **Check User and Group Information**
```bash
cat /etc/passwd | grep devops_user   # Verify user exists
cat /etc/group | grep devops_team   # Verify group exists
```

### **Check SSH Restrictions**
Test SSH login restrictions:
```bash
ssh user1@your-server-ip  # Should be denied if in DenyUsers
ssh devops_user@your-server-ip  # Should be allowed if in AllowUsers
```
---

# **Linux Permissions Task**

## **2. Task** 
- Create a directory `/devops_workspace` and a file `project_notes.txt`.
- Set permissions:
  - Owner can **edit** (read & write).
  - Group can **read only**.
  - Others have **no access**.
- Use `ls -l` to verify permissions.


### 1. **Create the directory and file**
```bash
sudo mkdir /devops_workspace
sudo touch /devops_workspace/project_notes.txt
```

### 2. **Set ownership**
```bash
sudo chown devops_user:devops_team /devops_workspace/project_notes.txt
```
- `devops_user` → Owner of the file.
- `devops_team` → Group owner.

### 3. **Set permissions**
```bash
sudo chmod 640 /devops_workspace/project_notes.txt
```
- `6 (rw-)` → Owner can **read & write**.
- `4 (r--)` → Group can **read only**.
- `0 (---)` → Others **have no access**.

### 4. **Verify with `ls -l`**
```bash
ls -l /devops_workspace/project_notes.txt
```
#### **Output**
```
-rw-r----- 1 devops_user devops_team 0 Feb 5 12:34 /devops_workspace/project_notes.txt
```

---
# Log Analysis Task

## **3. Task**
Logs are crucial in DevOps! You’ll analyze logs using the `Linux_2k.log` file from LogHub (GitHub Repo).

Download the log file from the repository.

- Extract insights using commands:
 - Use `grep` to find all occurrences of the word "error".
 - Use `awk` to extract timestamps and log levels.
 - Find the most frequent log entry using `awk`



### 1. **Copy And Store**

**Copy the logs from (GitHubRepo) and paste it into `var/log/devops.log`**

**Store the log in devops.log using vim editor**

```
vim devops.log
```
### 2. **Extract Insights Using Commands**
#### **Find all occurrences of the word "error" using `grep`**
```bash
grep -i "error" Linux_2k.log
```

#### **Extract timestamps and log levels using `awk`**
```bash
awk '{print $1, $2, $3}' Linux_2k.log  # Adjust fields as needed
```

### 3. **Find the Most Frequent Log Entry**
Using `awk` and `sort`:
```bash
awk '{print $0}' Linux_2k.log | sort | uniq -c | sort -nr | head -10
```
 **Review the most frequent log entries**
```bash
head -10 devops.log
```

