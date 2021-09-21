# Commands Custom Mappings

## Act

Run Act Script: `act command`

| Description           | Command  |
| :-------------------- | :------- |
| Backup System Files   | bkSystem |
| Backup Core to HDD    | bkCore   |
| Backup Core to pCloud | bkpCloud |
| Backup HDD to bkHDD   | Backup   |
| Backup HDD to Gray    | bkGray   |
| Backup HDD to Black   | bkBlack  |
| Backup HDD to Red     | bkRed    |
| Backup HDD to Red     | bkRed    |
| Backup Core1 to SD1   | bkSD1    |
| Backup Core1 to SD2   | bkSD2    |
| Backup Core1 to SD3   | bkSD3    |
| Backup Core1 to SD4   | bkSD4    |
| Backup Core1 to SD5   | bkSD5    |

Run Act Script in Git: `gact command`

| Description                          | Command |
| :----------------------------------- | :------ |
| Backup Root Files to iCloud/Backup   | bkRoot  |
| Backup System Files to iCloud/Backup | rsRoot  |

## Init Mappings

### Init Standard Aliases

| Description               | Command      |
| :------------------------ | :----------- |
| Source .zshrc             | szsh         |
| Copy Path to Clipboard    | cpath        |
| sudo shutdown -P now      | shutdown     |
| sudo shutdown -r now      | reboot       |
| List Hidden               | la           |
| List Long                 | ll           |
| List Long by Size         | ls           |
| List Long by Date         | lt           |
| Remove Directory          | rmd          |
| Remove File               | rm           |
| Copy Dir(rsync)           | cpd          |
| Copy File                 | cp           |
| Size of Disks             | dsize        |
| Size of items in Current  | fsize        |
| Sizes of Tree (num) Deep  | fdtree {num} |
| Own user/staff            | ownES        |
| Own user/staff Recur      | ownrES       |
| Own user/admin            | ownEA        |
| Own user/admin Recur      | ownrEA       |
| Permission for User+Group | pug          |
| Permission for User       | pu           |

### Init Program Aliases

| Description                       | Command  |
| :-------------------------------- | :------- |
| ---TEXT---                        |          |
| neovim                            | vi       |
| neovim at Text Folder             | vit      |
| neovim at Git Folder              | vig      |
| neovim open dotFiles readme (git) | vid      |
| neovim open Thoughts readme (git) | vis      |
| neovim session current            | vsc      |
| neovim session dotFiles           | vsd      |
| neovim session git                | vsg      |
| ---GIT---                         |          |
| Git                               | gi       |
| Git Status                        | gis      |
| Git Commit " add not"             | gic      |
| Git add all                       | gic      |
| Git push                          | gih      |
| Git pull                          | gil      |
| Git clone                         | gicl     |
| Git add/commit/push               | gich     |
| ---DOCKER---                      |          |
| List Images                       | dolsi    |
| List Running Containers           | dolsc    |
| List All Containers               | dolsac   |
| Remove Container ID (ID)          | dormc    |
| Remove Image ID (ID)              | dormi    |
| Remove All                        | dRemove  |
| ---DOCKER COMPOSE---              |          |
| Up                                | dcup     |
| Down                              | dcdown   |
| Restart                           | dcrs     |
| List/Status                       | dcls     |
| Update                            | dcupdate |
| Start                             | dcstart  |
| Stop                              | dcstop   |
| Remove                            | dcrm     |

### Init Mac Aliases

| Command                | Description     |
| :--------------------- | :-------------- |
| CD Text Folder         | cdt             |
| CD Bin Folder          | cdb             |
| CD Documents Folder    | cdd             |
| CD Downloads Folder    | cdw             |
| CD Desktop Folder      | cdp             |
| CD Root Folder         | cdr             |
| CD Git Folder          | cdg             |
| CD Git/dotFiles Folder | cddf            |
| CD Git/Thoughts Folder | cdth            |
| CD Git/Notebook Folder | cdnb            |
| CD HDD                 | cdhdd           |
| Update Brew/CLI        | macUpdate       |
| Turn dock off          | dockoff         |
| Turn dock on           | dockon          |
| Turn dock fast         | dockfast        |
| ---Laptop---           |                 |
| ship                   | ssh Server IP   |
| shmm                   | ssh Server name |
| shzt                   | ssh Ubuntu VM |
| ---Server---           |                 |
| CD HDD Folder          | cdhdd           |
| CD SSD Folder          | cdssd           |

## Program Mappings

### Tmux

| Action                  | Key                  |
| ----------------------- | -------------------- |
| **Sessions**            |                      |
| Start Session           | tm                   |
| Start Session (name)    | tmn (name)           |
| Source Config           | tmsc                 |
| Attach Session Last     | tma                  |
| Attach Session (name)   | tman (name)          |
| Detach session          | ^a d                 |
| List sessions           | tmls                 |
| List session            | ^a s                 |
| List Commands           | ^a ?                 |
| Previous Session        | ^a (                 |
| Next session            | ^a )                 |
| Rename session          | ^a $                 |
| Kill Session (n)        | tmux kill-ses -t (n) |
| Kill all but Current    | tmux kill-session -a |
| Kill server             | tmk                  |
| Kill session            | tmkss                |
| **Windows(Tabs)**       |                      |
| new/kill window         | ^a c/k               |
| next/previous window    | ^a n/p               |
| move to window (num)    | ^a (num)             |
| rename window           | ^a ,                 |
| list all windows        | ^a w                 |
| split window horizontal | ^a -                 |
| split window vertical   | ^a                   |
| **Panes (Splits)**      |                      |
| split window vertical   | ^a                   |
| move pane left/right    | ^a {/}               |
| Close pane              | ^a x                 |
| Zoom Pane               | ^a z                 |
| Resize pane             | ^a H/J/K/L           |
| Show pane numbers       | ^a q                 |
| Goto Pane (num)         | ^a q (num)           |
| **Scrolling**           |                      |
| start scroll mode       | ^a [                 |
| move cursor             | h/j/k/l/w/b          |
| Goto Top/Bottom         | g/G                  |
| start/stop select       | space/return         |
| Search Forward/Backward | / / ?                |
| Paste contents          | ^a ]                 |
| stop scroll mode        | q                    |
| scroll 1/2 page down/up | ^d/^u                |
| scroll 1/2 page down/up | ^d/^u                |
| scroll page down/up     | ^n/^p                |
| search again (reverse)  | n/N                  |
| **Extra**               |                      |
| Command Mode            | ^a :                 |
| Resize window           | ^a sH,sJ,sK,sL       |
| reload tmux             | ^a sI                |
| Move between panes      | ^h, ^j, ^k, ^l       |
| ----------------------- | -------------------- |
