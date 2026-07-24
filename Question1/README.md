# Question 1

## Aim

Design a shell script that identifies duplicate submissions, creates a backup of unique files, generates a report, and stores error messages separately.

---

## Commands Used

### Command 1

```bash
mkdir submissions
```

Explanation:

This command creates a directory named `submissions` to store sample student assignment files. It simulates the folder containing assignment submissions.

---

### Command 2

```bash
echo "Linux Assignment" > submissions/file1.txt
```

Explanation:

Creates a sample submission file. The `>` operator creates the file and writes the given text into it.

---

### Command 3

```bash
cp submissions/file1.txt submissions/file2.txt
```

Explanation:

Copies `file1.txt` to `file2.txt`. Both files now have the same content, making them duplicates for testing.

---

### Command 4

```bash
echo "Operating Systems" > submissions/file3.txt
```

Explanation:

Creates another submission with different content. This file should be treated as a unique submission.

---

### Command 5

```bash
chmod +x duplicate_backup.sh
```

Explanation:

Makes the shell script executable so it can be run directly from the terminal.

---

### Command 6

```bash
./duplicate_backup.sh
```

Explanation:

Runs the shell script. It checks all files, identifies duplicate submissions using MD5 hashes, copies only unique files into the backup folder, creates a report, and stores any errors in a separate log file.

---

### Command 7

```bash
cat report.txt
```

Explanation:

Displays the generated report showing the number of processed files, duplicate files, and backed-up files.

---

### Command 8

```bash
cat errors.log
```

Explanation:

Displays the error log. If no errors occurred during execution, the file remains empty.

---

## Files Generated

- duplicate_backup.sh
- report.txt
- errors.log
- backup/

---

## Justification

The `md5sum` command is used to generate a unique hash for each file, making duplicate detection efficient. The `cp` command backs up only unique files, while output redirection (`>`, `>>`, and `2>>`) is used to create reports and separately store error messages, making the script organized and easy to debug.
