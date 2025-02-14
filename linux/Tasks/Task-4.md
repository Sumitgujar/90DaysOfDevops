TASK 4

# Background Process Management

## Task 
This guide provides step-by-step instructions to start, monitor, and terminate a background process using Linux commands.

## Steps to Execute

### **1. Start a Background Process**
Run the following command to start `ping` in the background and log output to a file:
```bash
ping google.com > ping_test.log &
```
This will return a **Process ID (PID)**, which is required for monitoring and termination.

### **2. Monitor the Process**
- **Using `ps`**
 ```bash
  ps aux | grep ping
  ```
- **Using `top`**
 ```bash
  top
  ```
  - Press `/` and type `ping` to filter results.
  - Press `q` to exit.
- **Using `htop` (if installed)**
 ```bash
  htop
  ```
  - Press `F3` and search for `ping`.
  - Press `F9` to kill the process (choose `SIGKILL` or `SIGTERM`).

### **3. Kill the Process**

Find the PID from `ps aux` or `top`, then use:
```bash
kill <PID>
```
Or force kill if necessary:
```bash
kill -9 <PID>
```

### **4. Verify the Process is Terminated**
```bash
ps aux | grep ping
```
If no output appears (except for the `grep` process itself), the process is successfully terminated.

