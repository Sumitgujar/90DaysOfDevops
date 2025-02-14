
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
awk '{print $1, $2, $3}' devops.log  
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
