# Mac

## Mac Commands

- Change screen capture file format: `defaults write com.apple.screencapture type jpg`
- Hide files: defaults write com.apple.Finder AppleShowAllFiles NO
- Show all files: defaults write com.apple.Finder AppleShowAllFiles YES
- Un-hide Library folder: `chflags nohidden _Users_/Library`
- Un-hide Library folder: `chflags nohidden ~_Library_`
- Kill the Dock: defaults write com.apple.dashboard mcx-disabled -boolean YES
- Create simlink for Sublime Text: sudo ln -s “_Applications_Sublime Text.app_Contents_SharedSupport_bin_subl” _usr_local_bin_sublime
  - ln -s new_Dropbox_location old_Dropbox_location
  - ln -s _Users_viticci_Dropbox_iTunes _Users_viticci_Music_iTunes
- Empty Trash Can: `rm -rf ~/.Trash/*`
  - [trash](https://hasseg.org/trash/)
- Open dmg/sparsebundle: `hdid Keep.dmg`
- Disk Utilities: `diskutil list`
  - Disk Utilities Unount: `diskutil unmount`
  - Disk Utilities Mount: `diskutil unmount Disk /dev/disk2`
- Access clipboard `pbpaste`
- [How can I mount an encrypted disk from the command line?](https://apple.stackexchange.com/questions/42257/how-can-i-mount-an-encrypted-disk-from-the-command-line)

### Mac System Variables

Does this work on Linux?

- sudo scutil --set HostName `<new host name>`
- scutil --get HostName
- scutil --get LocalHostName
- scutil --get ComputerName
- export HM=$(scutil --get LocalHostName)

### Mac iTerm2

[Manual](https://iterm2.com/documentation.html)

CLI **Commands**

- [Change iTerm2 from CLI](https://coderwall.com/p/s-2_nw/change-iterm2-color-profile-from-the-cli)
- Add Following to zshrc or init to change profile of iterm in CLI
- Change iterm2 profile. Usage it2prof ProfileName (case sensitive) `it2prof() { echo -e "\033]50;SetProfile=$1\a" }`
- When done use `it2prof SomeOtherProfileName` to change profile

**Shell Integration** Commands

[Touch Bar](https://iterm2.com/documentation-touch-bar.html)

[Shell Integration](https://www.iterm2.com/documentation-shell-integration.html)

| Command                                 | Description                                                       |
| :-------------------------------------- | :---------------------------------------------------------------- |
| imgcat filename                         | Displays the image inline.                                        |
| imgls                                   | Shows a directory listing with image thumbnails.                  |
| it2api                                  | Command-line utility to manipulate iTerm2.                        |
| it2attention start or stop or fireworks | Gets your attention.                                              |
| it2check                                | Checks if the terminal is iTerm2.                                 |
| it2copy [filename]                      | Copies to the pasteboard.                                         |
| it2dl filename                          | Downloads the specified file, saving it in your Downloads folder. |
| it2setcolor ...                         | Changes individual color settings or loads a color preset.        |
| it2setkeylabel ...                      | Changes Touch Bar function key labels.                            |
| it2ul                                   | Uploads a file.                                                   |
| it2universion                           | Sets the current unicode version.                                 |
