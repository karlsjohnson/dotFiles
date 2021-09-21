# cliCommands

Basic setup: _[sudo] command [optional switch] [file or directory pat_

## Default Table

### System

| Command        | Description            |
| :------------- | :--------------------- |
| man {command}  | Display Manual         |
| sodu {command} | Run command as root    |
| sudo -i        | Run session as root    |
| env            | Show environment vars  |
| pwd            | Show Path              |
| clear          | Clear Screen           |
| ^u             | Clear Line             |
| ^L             | Clear Prompt           |
| ^c             | Cancel Command         |
| ^d             | Delete Word            |
| ^d             | Delete to end of line  |
| ^f             | Delete Word Forward    |
| ^e             | Goto End of Line       |
| ^a             | Goto Beginning of Line |

### Files

| Command            | Description                 |
| :----------------- | :-------------------------- |
| ls -a              | List Hidden Files           |
| ls -a              | List Hidden Files           |
| ls -l              | List Long View              |
| ls -la             | Hidden and long             |
| ls -R              | lists recursively           |
| ls -s              | file size                   |
| ls -S              | Sort by file size           |
| ls -t              | Sort by time                |
| cd                 | Change Directory            |
| cd ..              | Change up                   |
| cd ~               | Go to Home Directory        |
| cd ../folder       | Go up, then to dir          |
| cd -               | Switch to previous Dir      |
| mkdir {name}       | Make Directory              |
| rm -rf folderName  | Remove directory            |
| rm fileName        | Remove file                 |
| rm -f filename     | Force                       |
| rm -r folder       | remove recursively          |
| mv {old} {new}     | Rename File                 |
| mv {source} {dest} | Move File                   |
| mv {oldDir} {new}  | Rename Folder               |
| ln -s file link    | Creat Symlinks To Files     |
| ln -s file link    | Creat Symlinks To Dir       |
| ls -l my_link.txt  | Verify symlink              |
| ln -sf file link   | Overwriting Symlinks        |
| unlink link        | Removing Symlinks           |
| cp source dest     | Copy Options Below          |
| cp -a              | archive files               |
| cp -f              | force (removing old file)   |
| cp -i              | ask before overwrite        |
| cp -l              | link instead of copy        |
| cp -L              | follow symbolic links       |
| cp -n              | no file overwrite           |
| cp -R              | recursive copy (+ hidden)   |
| cp -u              | update - no new file/delete |
| cp -v              | print informative messages  |
| cp --parents       | creates tree if non exists  |

### Copy/Sync

| Command                          | Description                     |
| :------------------------------- | :------------------------------ |
| scp sour user@host:/dest         | Copy over ssh                   |
| scp file u@host:/root/dir        | Example 1                       |
| scp user@host:/path/file .       | Example 2                       |
| scp -v -r ~/dir u@host:/root/dir | Copy dir Recursively            |
| -p                               | Preserves modification times    |
| -q                               | Quiet mode                      |
| -r                               | Recursively entire directories  |
| -v                               | Verbose mode                    |
| Rsync {options} {From} {To}      | Sync Folders                    |
| rsync -ah /par/dir /par/         | Example1                        |
| rsync /dir user@host:/dir/       | Example 2                       |
| - a                              | recursive and keeps permissions |
| - r                              | recursive                       |
| - v                              | verbose                         |
| --progress                       | show progress of files          |
| -z                               | compress file data              |
| -h                               | output human-readable           |
| --delete                         | delete not in source            |
| --exclude-from 'extc.txt'        | excluded files/folders          |

### Text

| Command                    | Description                     |
| :------------------------- | :------------------------------ |
| touch text.txt             | Create a new text file          |
| echo "T" >> file.txt       | Add text to file                |
| cat (filename)             | View txt file                   |
| zip -h                     | Zip File                        |
| unzip -h                   | UnZip file                      |
| less file (h-help)         | Display file                    |
| echo "text" > [file.txt]   | creates file, includes text     |
| echo "text" > [file.txt]   | appends file with text          |
| head [text file]           | show the first ten lines        |
| tail [text file]           | display the last ten lines      |
| grep "pattern" [file]      | search pattern, prints lines    |
| grep -r "pattern" [dir]    | pattern search in directory     |
| find [file or directory]   | Find file or dir in current dir |
| locate {file or directory} | Find everywhere with wildcards  |

### Permissions

| Command                   | Description                             |
| :------------------------ | :-------------------------------------- |
| chmod -o {permi} file     | Set File/Folder Permission              |
| -R                        | recursive includes subdirectories       |
| -f                        | force, forge ahead  with errors         |
| -v                        | verbose, show objects processed         |
| u g o a                   | user group other all                    |
| rwx                       | read, write and execute                 |
| rwxrwxrwx                 | User, Group, Others                     |
| Capital X                 | allow view directory                    |
| UGO (numbers)             | User, Group, Others                     |
| 0                         | no permission                           |
| 1                         | Execute                                 |
| 2                         | Write                                   |
| 4                         | 4+0+1 read, no write, no execute        |
| 5                         | 4+0+1 read, no write, execute           |
| 6                         | 4+2+0 read, write, no execute           |
| 7                         | 4+0+1 read, write, execute              |
| chmod a-x file            | execute removed for all                 |
| chmod a+rx file           | add read and execute for all            |
| chmod u=rw,o= file        | user read and write, others no access   |
| chmod u+w,go-w file       | add write and all contents, deny write  |
| chmod ug=rw file          | User Group can read and write           |
| chmod 664 file            | Sets 6 for u & g, 4 for o               |
| chmod 0744 file           | u=7,g&o=4, 0 specifies no special modes |
| chmod 1755 file           | u=7,g&o-5, 1000 set sticky bit(T))      |
| chmod 4755 file           | 755 for ugo 4 specifies set user ID     |
| chmod 2755 file           | 755 for ugo 2 specifies set group ID    |
| sudo chown -o {u:g} {f/f} | Change file/folder ownership            |
| -R                        | recursive includes subdirectories       |

### Prompt

| Command | Description                                      |
| :------ | :----------------------------------------------- |
| Ctrl+a  | Move cursor to start of line                     |
| Ctrl+e  | Move cursor to end of line                       |
| Ctrl+b  | Move back one character                          |
| Alt+b   | Move back one word                               |
| Ctrl+f  | Move forward one character                       |
| Alt+f   | Move forward one word                            |
| Ctrl+d  | Delete current character                         |
| Ctrl+w  | Cut the last word                                |
| Ctrl+k  | Cut everything after the cursor                  |
| Alt+d   | Cut word after the cursor                        |
| Alt+w   | Cut word before the cursor                       |
| Ctrl+y  | Paste the last deleted command                   |
| Ctrl+_  | Undo                                             |
| Ctrl+u  | Cut everything before the cursor                 |
| Ctrl+xx | Toggle between first and current position        |
| Ctrl+l  | Clear the terminal                               |
| Ctrl+c  | Cancel the command                               |
| Ctrl+r  | Search command in history - type the search term |
| Ctrl+j  | End the search at current history entry          |
| Ctrl+g  | Cancel the search and restore original line      |
| Ctrl+n  | Next command from the History                    |
| Ctrl+p  | previous command from the History                |

## Commands Manual

[Linux and Unix commands, information, and help](https://www.computerhope.com/unix.htm)

- **Manuals**
  - manual `man <command>`
  - Show Help: `<command> –help`
- **Run as root**
  - Run command as root user: `sodu command`
  - run session as root: `sudo -i`
- **Variables**
  - Show environment variables: `env`
- **Basic Commands**
  - Show Path: `pwd`
  - Clear screen: `clear`
- **Shutdown and Reboot**
  - Reboot forcibly: `sudo reboot -f`
  - uShutdown now: `shutdown -h now`
  - Shutdown poweroff: `sudo shutdown -P now`
  - Shutdown forcibly: `sudo shutdown -f now`
  - Shutdown reboot: `sudo shutdown -r now`
- **Kill jobs**
  - List all Jobs: `jobs`
  - List running jobs: `jobs -r`
  - List suspended jobs: `jobs -s`
  - List with PID jobs: `jobs -l`
  - kill job 1: `kill %1`
  - kill jod ID: `kill id`
- **Directories**
  - List Files: `ls`
    - List Files(show hidden): `ls -a`
    - -l: View Permissions (long)
    - -la: hidden and long
    - -R: lists directory tree recursively
    - -s: file size
    - -S: option flag sorts files/directories list by file size
    - -t: option flag sorts files_directories list by time_date
  - Change directory: `cd <name>`
    - up `cd ..`
    - (tab to auto complete)
    - from top: `cd /folderName`
    - from users directory: `cd ~/folderName`
  - Make Directory: `mkdir folderName`
- **Remove**
  - Remove directory: `rm -rf folderName`
  - Remove file: `rm fileName`
  - Force: `rm -f filename`
  - remove recursively: `rm -r folder`
- **Move/Rename**
  - Rename File: `mv oldname newname`
  - Move File: `mv source dest`
  - Rename Folder: `mv olddir newdir`
  - Symbolic link: `ln -s source_file linkLocation`
- **Copy**
  - command `cp [options] source dest`
  - Copy Files: cp ‘path_filename’ ‘path_filename’
  - `cp -a` archive files
  - `cp -f` force copy by removing the destination file if needed
  - `cp -i` interactive - ask before overwrite
  - `cp -l` link files instead of copy
  - `cp -L` follow symbolic links
  - `cp -n` no file overwrite
  - `cp -R` recursive copy (including hidden files)
  - `cp -u` update - copy when source is newer than dest
  - `cp -v` verbose - print informative messages
  - cp --parents creates destination tree if non exists
- **SSH Copy**
  - Copy file to server: `scp ~/.ssh/id_rsa.pub elecknight@192.168.1.111:`
  - Copy over ssh: `scp source_file_path destination_file_path`
  - Example 1: `scp ~/my_local_file.txt user@remote_host.com:/some/remote/directory`
  - Example 2: `scp user@remote_host.com:/some/remote/directory ~/my_local_file.txt`
  - Example 3: `scp user@192.168.1.3:/some/path/file.txt .`
  - Example 4: `scp foo.txt bar.txt username@remotehost:/path/directory/`
  - local_ directory: `scp username@remotehost:/path/directory/\{foo.txt,bar.txt\} .`
  - local_ directory: `scp root@192.168.1.3:~/\{abc.log,cde.txt\} .`
  - Copy directory (recursively) `scp -v -r ~/Downloads root@192.168.1.3:/root/Downloads`
  - remote hosts: `scp user1@remotehost1:/some/remote/dir/foobar.txt user2@remotehost2:/some/remote/dir/`
- **Files**
  - Display file: `echo file`
  - Create a new text file: `touch text.txt`
- **Text Manipulation**
  - Add text to file: `echo "Hello Command Line" >> hello_cli.txt`
  - View txt file: `cat (filename)`
- **Compression**
  - Zip File: `zip -h`
  - UnZip file: `unzip -h`
- **System Links**
  - Creating Symlinks To Files: `ln -s my_file.txt my_link.txt`
  - To verify that the symlink: `ls -l my_link.txt`
  - Creating Symlinks To Directories: `ln -s /mnt/my_drive/movies ~/my_movies`
  - Overwriting Symlinks: `ln -sf my_file.txt my_link.txt`
  - Removing Symlinks: `unlink symlink_to_remove`
- **Apt (linux)**
  - [Using apt-get Commands In Linux [Complete Beginners Guide] - It&#039;s FOSS](https://itsfoss.com/apt-get-linux-guide/)
  - [Linux apt-cache command help and examples](https://www.computerhope.com/unix/apt-cache.htm)
  - [Linux apt-cache command help and examples](https://www.computerhope.com/unix/apt-cache.htm)
  - [Beginners Guide to using apt-get commands in Linux](https://codeburst.io/a-beginners-guide-to-using-apt-get-commands-in-linux-ubuntu-d5f102a56fc4?gi=fd7cae9e4853)
  - [How to Use APT-GET Commands In Linux {Beginner Tutorial With Examples}](https://phoenixnap.com/kb/how-to-use-apt-get-commands)
  - [Ubuntu ‘apt-get’ list of commands (cheat sheet) | alvinalexander.com](https://alvinalexander.com/linux-unix/ubuntu-apt-get-cache-list-search-commands-cheat-sheet)
  - Main **Update** Commands
    - update:`sudo apt-get update -y`
    - upgrade:`sudo apt-get upgrade -y`
    - Both:`sudo apt-get update -y && sudo apt-get upgrade -y`
    - Dist-upgrade:`sudo apt-get dist-upgrade -y`
    - Clean:`sudo apt-get clean`
    - autoclean: `sudo apt-get autoclean`
    - autoremove: `sudo apt-get autoremove`
    - check: `sudo apt-get check`
    - all:`sudo -- sh -c 'apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y; apt-get autoclean -y'`
      - `sudo apt-get update -y`
      - `sudo apt-get upgrade -y`
      - `sudo apt-get dist-upgrade -y`
      - `sudo apt-get autoremove`
      - `sudo apt-get autoclean`
      - `echo "Ubuntu update complete"`
- Display file: `less /etc/services`
- Create file: `touch file1`
- Create Directory (option to create all directories in path): `mkdir -p some/other/directories`
- Move/Rename file: `mv file1 test`
- Copying Files: `cp file3 file4`
- Copying Files and Directories: `cp -r some again`
- Show Path: `pwd`
- What to do with commands that return too many results: `locate *.png | more` or `locate *.png | less`
- create an empty file: `touch [file name]`
- copy file1 and create a new file named file2: `cp ~/file1 ~/public/file2`
- move file1 from dir1 to dir2: `mv [/dir1/file1] [/dir2/file1]`
- create a symbolic link for a file or folder: `ln -s [file] [link]`
- creates a zipped folder that contains a compressed file: `zip [archive.zip] [file]`
- unzips a compressed folder: `unzip [archive.zip]`
- replaces the file with a .gz archive containing the file: `gzip [file]`
- decompresses a .gz archive: `gzip -d [archive.gz]`
- creates a file that includes whatever "text" we wrote with the command: `echo "text" > [file.txt]`
- appends the "text" at the end of the file.txt content, this is a safer way of running echo: `echo "text" >> [file.txt]`
- display all the contents of a text file at the terminal: `cat [text file]` or `cat [text file] | more` or `cat [text file] | less`
- We can also use `head [text file]` to only show the first ten lines, and `tail [text file]` to display the last ten lines.
- `grep "pattern" [file`] - search for a particular text pattern inside a text document. If the pattern is found, the command prints the line containing the pattern on the terminal. We can also search for a pattern in all the files in a directory, by using `grep -r "pattern" [dir]`
- look for a particular file or directory inside the current working directory: `find [file or directory]`
- look for a specific file or directory everywhere on the filesystem, and return all paths that contain it: `locate [file or directory]` We can use it with wildcards, such as locate *.png

### Commands List Files - LS

- Basic `ls`
- List Files: `ls -l`
- View Hidden Files: `ls -a`
- List hidden Files: `ls -la`
- List Files with Human Readable Size Format with option: `ls -lh`
- List Files and Directories with ‘/’ Character at the end: `ls -F`
- List Files in Reverse Order: `ls -r`
-" Recursively list Sub-Directories: `ls -R`
- Reverse Output Order: `ls -ltr`
- Sort Files by File Size: `ls -lS`
- Display Inode number of File or Directory: `ls -i`
- Show Help Page: `man ls`

### Commands Change Directory - CD

- Basic(using relative path): `cd <folder>/<child folder>`
- Change from current directory to absolute path: `cd /usr/local/lib`
  - /usr/ is at root
- Switch back to previous directory: `cd -`
- Change Current directory to parent directory: `cd ..`
- Move to current directory: `ch .`
- Move two directory up from where you are now: `cd ../ ../`
- Change to a directory containing white spaces: `cd test\ tecmint/`
- Move to users home directory from anywhere: `cd ~`
- Change from current working directory to Downloads and list all its settings in one go: `cd ~/Downloads && ls`

### Commands Remove Files - RM

- delete a file: `rm [file]`
- Remove empty directories: `rmdir testing/example`
  - rmdir is functionally equivalent to the command rm -d.
- If you wish to remove a non-empty directory: `rm -r again`
- To delete a directory and all its contents, we need to use `rm -r [dir]`
- rm options:
  - `-f` Ignore nonexistant files, and never prompt before removing.
  - Prompt before every removal `-i`
  - Prompt once before removing more than three files, or when removing recursively. This option is less intrusive than -i, but still gives protection against most mistakes`-I`
  - `--interactive[=WHEN]` Prompt according to WHEN: never, once (-I), or always (-i). If WHEN is not specified, then prompt always.
  - `--one-file-system` When removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument
  - `--no-preserve-root` Do not treat "/" (the root directory) in any special way.
  - `--preserve-root` Do not remove "/" (the root directory), which is the default behavior.
  - `-r, -R, --recursive` Remove directories and their contents recursively.
  - `-d, --dir` Remove empty directories. This option permits you to remove a directory without specifying -r/-R/--recursive, provided that the directory is empty. In other words, rm -d is equivalent to using rmdir.
  - `-v, --verbose` Verbose mode; explain at all times what is being done.
  - `--help` Display a help message, and exit.
  - `--version` Display version information, and exit.
- if /home/hope is currently your working directory `rm ./-file.txt`
- Remove all files in the working directory: `rm -f *`
- Remove the directory mydirectory, and any files and directories it contains. `rm -r mydirectory`
- Same as the above command, but you will never be prompted. `rm -rf mydirectory`
