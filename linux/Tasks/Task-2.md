
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
