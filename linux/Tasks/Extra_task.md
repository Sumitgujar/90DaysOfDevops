EXTRA TASK

## Task-1

You can use the following `awk` and `sort` command to find the top 5 most common log messages in `Linux_2k.log`:  

### **Command:**
```bash
awk '{ $1=$2=$3=""; print $0 }' Linux_2k.log | sort | uniq -c | sort -nr | head -5
```

### **Explanation:**
1. **`awk '{ $1=$2=$3=""; print $0 }' Linux_2k.log`**  
- This removes the first three fields (which usually correspond to the timestamp and possibly hostname) so that only the actual log message remains.
   
2. **`sort`**  
- Sorts the log messages so that identical messages are grouped together.

3. **`uniq -c`**  
- Counts occurrences of each unique log message.

4. **`sort -nr`**  
 - Sorts the counted occurrences in descending order.

5. **`head -5`**  
- Displays the top 5 most common log messages.

# Find and List Recently Modified Files

## Task-2
 
This guide provides step-by-step instructions to find and list all files modified in the last 7 days using the `find` command in Linux.

## Command to List Files Modified in the Last 7 Days
```bash
find /path/to/directory -type f -mtime -7
```

## Explanation
- **`find`** → Command to search for files.
- **`/path/to/directory`** → Replace with the directory you want to search (use `/` for the entire system or `.` for the current directory).
- **`-type f`** → Finds only files (not directories).
- **`-mtime -7`** → Finds files modified in the last 7 days.

## Example (Search in Home Directory)
```bash
find ~/ -type f -mtime -7
```


- **Include Subdirectories with Details**:
 ```bash
  find /path/to/directory -type f -mtime -7 -ls
  ```


