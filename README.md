# Log Archive Tool
A bash script that you can use as a tool to archive log files and directories. This archive can then be accessed in `/var/logs`. This project involves using the `tar` command, which is a well-known tool to extract and archive files in unix. 

What this tool will do:
- Takes a file name as an argument.
- The tool will search for the file in the computer.
- Once found, the file will be archived into a `.tar.gz` file stored in `/var/logs`
- The name of the archive will contain the original file name as well as the date and time it was archived. 

This project is a part of the DevOps Projects series from roadmap.sh. Specifically [Log Archive Tool](https://roadmap.sh/projects/log-archive-tool)


## Getting Started

1. Clone the repository
```bash
git clone https://github.com/manasyesuarthana/log-archive-tool.git
```

2. Locate the tool script
```bash
cd log-archive-tool
ls
```

3. Give execute permissions to the file
```bash
chmod 700 log-archive.sh
```

4. Execute the script with a log file or dir as a first argument.
- Note: writing to `/var/log` requires root permissions, so running it for the first time requires sudo.
```bash
sudo ./log-archive.sh
Usage: ./log-archive.sh <file_name_to_archive>
```
## Example Usage
```
$ sudo ./log-archive.sh testdir
Archiving testdir...
testdir/
testdir/test.txt
File saved in /var/log as testdir_20250809_110127.tar.gz

$ ls /var/log | grep testdir
testdir_20250809_110127.tar.gz
```