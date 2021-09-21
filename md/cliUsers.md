# Users

[How to Manage Users from the Command Line](https://www.maketecheasier.com/manager-users-linux-command-line/)

**Add users** command

- syntax: `useradd [options] username`
- Add a New User: `useradd <username>`
- change password: `passwd` or `passwd username`
- Create a User with Different Home Directory: `useradd -d /data/projects anusha`
- View home directory" `cat /etc/passwd | grep anusha`
- Add a New User to Multiple Groups:`useradd -G admins,webadmin,developers <user>`
- Add a User to Multiple Groups: `usermod -a -G group1,group2,group3 exampleusername`

**Create** new user:

- create folder: `sudo mkdir <home folder path>`
- add user: `sudo useradd -d <home folder path> <user>`
- set password: `passwd <user>`
- set shell: `sudo usermod --shell /bin/bash --home <home folder path> <user>`
- set ownership: `sudo chown -R <user>:<user> <home folder path>`
- set eleckngiht: `sudo usermod -a -G <user> elecknight`
- permissions: `sudo chmod 755 <home folder path>`
- copy files: `cp /etc/skel/.* <home folder path>`

## Permissions

[Linux chmod](https://www.computerhope.com/unix/uchmod.htm)
[Linux chown](https://www.computerhope.com/unix/uchown.htm)
[Linux chown](https://www.computerhope.com/unix/uchown.htm)

- **Terms** Defined
  - User: rwx (read, write and execute)
  - Group: r-x (read and execute)
  - Others: r-x (read and execute)
  - File Permissions
  - Line of 10
  - 1 - d or - = directory  or not
  - 2-4 = User
  - 5-7 = Groups (which the owner of the file belongs)
  - 8-10 = Others (everyone else)
  - r = read
  - w = write
  - x = execute
    – unset
- **Change** Permissions
  - `chmod [options] mode[,mode] file1 [file2 ...]`
- **Options**
  - -R recursive, i.e. include objects in subdirectories
  - -f force, forge ahead with all objects even if errors occur
  - -v verbose, show objects processed
  - `chmod [references][operator][modes] file ...`
- **References**
  - u user the owner of the file
  - g group users who are members of the file's group
  - o others users who are neither the owner of the file nor members of the file's group
  - a all all three of the above, same as ugo
  - adds the specified modes to the specified classes
  - removes the specified modes from the specified classes
  - = the modes specified are to be made the exact modes for the specified classes
- **Modes**
  - r read: read a file or list a directory's contents
  - w write: write to a file or directory
  - x execute: execute a file or recurse a directory tree
  - X special execute which is not a permission in itself but rather can be used instead of x. It applies execute permissions to directories regardless of their current permissions and applies execute permissions to a file which already has at least one execute permission bit already set (either user, group or other). It is only really useful when used with '+' and usually in combination with the -R option for giving group or other access to a big directory tree without setting execute permission on normal files (such as text files), which would normally happen if you just used "chmod -R a+rx .", whereas with 'X' you can do "chmod -R a+rX ." instead
  - s setuid/gid details in Special modes section
  - t sticky details in Special modes section, restricted deletion flag or sticky bit
- **Example**
  - `chmod a+r publicComments.txt` read is added for all classes (i.e. User, Group and Others).
  - `chmod +r publicComments.txt` omitting the class defaults to all classes, but the resultant permissions are dependent on umask
  - `chmod a-x publicComments.txt` execute permission is removed for all classes.
  - `chmod a+rx viewer.sh` add read and execute for all classes.
  - `chmod u=rw,g=r,o= internalPlan.txt` user(i.e. owner) can read and write, group can read, Others cannot access.
  - `chmod -R u+w,go-w docs` add write permissions to the directory docs and all its contents (i.e. Recursively) for user and deny write access for everybody else.
  - `chmod ug=rw groupAgreements.txt` User and Group members can read and write (update the file).
  - `chmod 664 global.txt` sets read and write and no execution access for the user and group, and read, no write, no execute for all others.
  - `chmod 0744 myCV.txt` equivalent to u=rwx (400+200+100),go=r (40+ 4). The 0 specifies no special modes.
  - `chmod 1755 findReslts.sh` the 1000 specifies set sticky bit and the rest is equivalent to u=rwx (400+200+100),go=rx (40+10 + 4+1) This suggests that the script be retained in memory.
  - `chmod 4755 SetCtrls.sh` the 4 specifies set user ID and the rest is equivalent to u=rwx (400+200+100),go=rx (40+10 + 4+1).
  - `chmod 2755 SetCtrls.sh` the 2 specifies set group ID and the rest is equivalent to u=rwx (400+200+100),go=rx (40+10 + 4+1).
  - `chmod -R u+rwX,g-rwx,o-rx` PersonalStuff Recursively set a directory tree to rwx for owner directories, rw for owner files, --- (i.e. no access) for group and others.
  - `chmod -R a-x+X publicDocs` remove the execute permission on all files in a directory tree (i.e. Recursively), while allowing for directory browsing.
- **Show groups**
  - dscl . list /groups
  - dscl . -read /Groups/staff
  - sudo dscl . -append /Groups/staff GroupMembership _www
  - sudo chmod -R 770 site
  - chown [username] [file]
- **Change file ownership**
  - sudo chown elecknight:staff Documents
  - sudo chown username:group fileOrFolder
- **two types of users:**
  - system users(non-interactive or background processes) and regular users
- There is the **superuser**, or root user, that has the ability to override any file ownership and permission restrictions
- List users: `cat /etc/passwd`
- Change file/folder ownership: `sudo chown <user:group> <file/folder>`
- list your id, group id and group membership: `id`
- Linux **Groups**
- List groups: `cat /etc/group` or `getent group`
- List a user in groups `grep <user> /etc/group`
- List what groups a user is in `groups elecknight`
- Add a user to a group: `sudo usermod -a -G examplegroup exampleusername`
- Change a User’s Primary Group: `usermod -g groupname username`
- Add a New Group: `sudo groupadd mynewgroup`
- Change a User’s Primary Group: `usermod -g groupname username`
- View the Groups a User Account is Assigned To: `groups <user>`
- Change file/group of file/folder: `chgrp group filename`
- Change permissions
  - command: `chmod options permissions file name`
  - **u**ser, **g**roup, or **o**thers can **r**ead, **w**rite, and e**x**ecute it
  - example: `chmod u=rwx,g=rx,o=r myfile`
  - octal permissions (7,5,4,3,2,1,0)
    - user|group|others
    - **7:** read, write and execute
    - **6:** read and write
    - **5:** read and execute
    - **4:** read only
    - **3:** write and execute
    - **2:** write only
    - **1:** execute only
    - **0:** none
- Options
  - **-c, --changes:** Like --verbose, but gives verbose output only when a change is actually made.
  - **-f, --silent, --quiet:** Quiet mode; suppress most error messages.
  - **-v, --verbose:** Verbose mode; output a diagnostic message for every file processed.
  - **--no-preserve-root:** Do not treat '/' (the root directory) in any special way, which is the default setting.
  - **--preserve-root:** Do not operate recursively on '/'.
  - **--reference=RFILE:** Set permissions to match those of file RFILE, ignoring any specified MODE.
  - **-R, --recursive:** Change files and directories recursively.
  - **--help:** Display a help message and exit.
  - **--version:** Output version information and exit.

### Groups

- **lp (LP):** use printers (not used anymore.)
- **lpadmin (LPADMIN):** manage printers
- **scanner:** enable and use scanners.
- **adm:** Group adm is used for system monitoring tasks. files in /var/log, xconsole,(and later /var/adm)
- **systemd-journal:** use journalctl and read systemd (in /var/log/journal)
- **plugdev:** mount and umount removable devices through pmount.
- **netdev:** manage network interfaces through the network manager and wicd.
- **cdrom:** CDROM drive and other optical drives.
- **floppy:** floppy drive and other removable (non-optical) drives, not for USB and flash memories.
- **tape:** access to a tape drive.
- **audio:** access to an audio device (the soundcard or a microphone).
- **video:** access to a video device (like the framebuffer, the videocard or a webcam).
- **sudo:** use sudo or pkexec. (See the default configuration in /etc/sudoers)
- **tty:** enable them to write to other people's TTYs, but it is not  used directly.
- **staff:** Allows users to add local modifications to the system
  - (/usr/local) without needing root privileges
  - note that executables in /usr/local/bin are in the PATH variable of any user,
  - and they may "override" the executables in /bin and /usr/bin with the same name).
  - Compare with group "adm", which is more related to monitoring/security.
- **shadow:** /etc/shadow is readable by this group. access file SETGID shadow.
- **utmp:** write to /var/run/utmp and similar files. (Programs)
- **disk:** Raw access to disks. Mostly equivalent to root access.
- **kmem:** /dev/mem and /dev/port are readable by this group. BSD relic (programs)
- **dialout:** serial ports. reconfigure the modem, dial anywhere, etc.
- **dip:** Dial-up IP, allows you to use tools like ppp, dip, wvdial, etc. to dial up a connection.
  - cannot configure the modem, but may run the programs that make use of it.
- **fax:** fax software to send / receive faxes.
- **voice:** Voicemail
- **users:** While Debian systems use the private user group system by default (each user has their own group),
  - some prefer to use a more traditional group system, in which each user is a member of this group.
- **wheel:** alter the functionality of the module pam_wheel in /etc/pam.d/su to restrict the execution of su.
  - If this group does not exists only members of root (usually root itself) are affected.
  - By default this group does not exist and all the configurations with pam_wheel are commented in /etc/pam.d/su.
  - See the page about the wheel_pam module for more information.
- **src:** manage the source code of the system. It is not used anymore.

The following **groups are not intended to be used directly by other users**.

- **root:** Root is (typically) the superuser.
- **daemon:** Some unprivileged daemons that need to write to files on disk run as daemon.
  - daemon (e.g., portmap, atd, probably others).
  - Daemons that don't need to own any files can run as nobody.nogroup instead,
  - and more complex or security conscious daemons run as dedicated users.
  - The daemon user is also handy for locally installed daemons.
- **games:** Many games are SETGID to games so they can write their high score files.
- **man:** The man program (sometimes) runs as user man, so it can write cat pages to /var/cache/man.
- **mail:** Mailboxes in /var/mail are owned by group mail, as explained in policy.
  - The user and group are used for other purposes by various MTA's as well.
- **news:** Various news servers and other associated programs
  - Files in the news spool are often owned by user and group news.
  - Programs such as inews that can be used to post news are typically SETGID news.
- **proxy:** Like daemon, this user and group is used by some daemons (specifically, proxy daemons)
  - that don't have dedicated user id's and that need to own files. F
  - or example, group proxy is used by pdnsd, and squid runs as user proxy.
- **postgres:** Postgresql databases are owned by this user and group.
- **www-data:** Some web servers run as www-data.
  - Web content should not be owned by this user, or a compromised web server would be able to rewrite a web site.
  - Data written out by web servers, including log files, will be owned by www-data.
- **backup:** So backup/restore responsibilities can be
  - locally delegated to someone without full root permissions.
- **list:** Mailing list archives and data are owned by this user and group.
- **irc:** Used by irc daemons.
- **sync:** The shell of user sync is /bin/sync. Thus, if its password is set to something easy to guess (such as ""),
  - anyone can sync the system at the console even if they don't have an account.
- **uucp:** The uucp user and group is used by the UUCP subsystem.
- **operator:** Operator was (historically) the only 'user' account that could login remotely.
- **bin:** maintained for historic reasons.
- **sys:** same as with bin.
- **nogroup(user: nobody):** Daemons that need not own any files run as user nobody and group nogroup.
  - Thus, no files on a system should be owned by this user or group.
