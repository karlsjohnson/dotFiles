# Programs

## Programs-Small Tools

- [node.js](https://nodejs.org) `brew install node`
  - [npm](https://www.npmjs.com/) (node package manager) is also installed
    - Update to lastest: `sudo npm install npm -g`
    - Make sure that `/usr/local/bin` is in your $PATH.
- [Jekyll:](https://jekyllrb.com/)
  - Install`sudo gem install jekyll bundler`
  - allow jekyll for firewall on ubuntu: `sudo ufw allow 4000`
- [exiftool:](https://sno.phy.queensu.ca/~phil/exiftool/) `brew install exiftool`
- [osxfuse:](https://github.com/osxfuse/osxfuse/wiki/SSHFS): `sshfs username@server:/path-on-server/ ~/path-to-mount-point`

## Homebrew

- [Homebrew:](http://formulae.brew.sh/)
  - First Aid: `brew doctor`
  - List Pakacges: `brew list`
  - Update Packages: `brew update`
  - Search Casks: `brew search —casks`

## Rsync

[Linux rsync command help and examples](https://www.computerhope.com/unix/rsync.htm)

- Rsync **Options**
  - a = archive - recursive and preserves permissions (owners, groups), times, symbolic links, and devices.
  - r = recursive - means it copies directories and sub directories
  - v = verbose - means that it prints on the screen what is being copied
  - --progress - show progress of files
  - -z : compress file data
  - -h : human-readable, output numbers in a human-readable format
  - --exclude-from 'extc.txt' : file lists excluded files and folders
- Rsync **Examples**
  - `rsync -ah --progress /media/ssd/rowen /media/backupBW/ssd/`
  - `rsync -nia /Volumes/Silver/ssd/rowen elecknight@192.168.1.111:/media/ssd/rowen | egrep -v "sending incremental file list" | egrep -v "^(\.|<)"`
  - `rsync -ah --progress --exclude-from 'extc.txt'  /media/ssd/music /media/backupBW/ssd/`
  - `rsync -ah --progress --exclude-from '/home/elecknight/bin/extc.txt'  /media/ssd/karl /media/backupBW/ssd/`
  - `rsync -ah --progress --exclude-from '/Users/elecknight/bin/rsyncExt.txt' --delete  ~/Downloads/ elecknight@192.168.1.111:/media/ssd/karl/downloads`
  - `sudo rsync -rv ~/Dropbox/site/ /Library/WebServer/Documents/`
  - It only copy_update files. It does not delete anything in the destination folder. `rsync -vur –exclude= _.db –exclude=_.info _sourceFolder /destinationFolder`
  - If you want to delete missing files in the destination folder just add this into the code: `sync -vur –delete –exclude=_.db –exclude=_.info /sourceFolder /destinationFolder`

## Renice

Alter priority of running processes

- SYNOPSIS renice priority [[-p] pid …] [[-g] pgrp …] [[-u] user …] renice -n increment [[-p] pid …] [[-g] pgrp …] [[-u] user …]
- DESCRIPTION The renice utility alters the scheduling priority of one or more running processes. The following who parameters are interpreted as process ID’s, process group ID’s, user ID’s or user names. The renice’ing of a process group causes all processes in the process group to have their scheduling priority altered. The renice’ing of a user causes all processes owned by the user to have their scheduling priority altered. By default, the pro- cesses to be affected are specified by their process ID’s.
- The following options are available:
  - `-g` Force who parameters to be interpreted as process group ID’s.
  - `-n` Instead of changing the specified processes to the given prior- ity, interpret the following argument as an increment to be applied to the current priority of each process.
  - `-u` Force the who parameters to be interpreted as user names or user ID’s.
  - `-p` Reset the who interpretation to be (the default) process ID’s.
- For example, `renice +1 987 -u daemon root -p 32` would change the priority of process ID’s 987 and 32, and all processes owned by users daemon and root.
- Users other than the super-user may only alter the priority of processes they own, and can only monotonically increase their nice value’’ within the range 0 to PRIO_MAX (20). (This prevents overriding administrative
fiats.) The super-user may alter the priority of any process and set thepriority to any value in the range PRIO_MIN (–20) to PRIO_MAX. Useful priorities are: 20 (the affected processes will run only when nothing
else in the system wants to), 0 (thebase’’ scheduling priority), any- thing negative (to make things go very fast).

## ImageMagik

- [imagemagick:](http://www.imagemagick.org/script/index.php) `brew install imagemagick`
- mogrify -path Output/ -resize 33% -quality 75 -unsharp 0.25x0.25+8+0.065 *.jpg
- MacBook-Pro:Essentials elecknight$

### Wget

- [wget:](https://www.gnu.org/software/wget/) `brew install wget`

wget --mirror --convert-links --page-requisites --no-parent -P _path_to/download [example-domain](https://example-domain.com)

### Pandoc

- [Pandoc - About pandoc](https://pandoc.org/)

The option we'll use here is Pandoc's ability to convert from HTML to Markdown, for example:

```bash
$ pandoc -s -r html http://www.whatismyip.com/ -o pandoc.md
For my page, I use the same trick as above because Pandoc can't connect to SSL directly:

$ curl --silent https://developer.citrixonline.com/api/gotomeeting-rest-api/apimethod/get-meetings | pandoc -s -r html -o pandoc.md
```
