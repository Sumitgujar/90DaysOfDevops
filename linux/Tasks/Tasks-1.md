
# **Linux User & SSH Configuration Task**

## **1. Task**
- Create a user `devops_user` and add them to a group `devops_team`.
- Set a password and grant sudo access.
- Restrict SSH login for certain users in `/etc/ssh/sshd_config`.

### 1. **Create a User (`devops_user`) and Add to a Group (`devops_team`)**
```bash
sudo groupadd devops_team   
sudo useradd -m -G devops_team devops_user  
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
