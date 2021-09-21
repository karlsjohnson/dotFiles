# Tmux

- [tumx:](https://github.com/tmux/tmux/wiki) `brew install tumx`

## Tmux-Links

_ProgramTmux:_ **Links**

- [tmux getting started](https://github.com/tmux/tmux/wiki/Getting-Started)
- [Awesome-tmux](https://github.com/rothgar/awesome-tmux)
- [Oh My Tmux!](https://github.com/gpakosz/.tmux)
- [Read The Tao of tmux | Leanpub](https://leanpub.com/the-tao-of-tmux/read)
- [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)
- [Tmux Cheat Sheet & Quick Reference](https://tmuxcheatsheet.com/)
- [tmux-and-vim](https://www.bugsnag.com/blog/tmux-and-vim)

_ProgramTmux:_ **How Tos**

- [Tmux Tutorial: How to Install and Use {15 Essential Commands}](https://phoenixnap.com/kb/tmux-tutorial-install-commands)
- [How to Use tmux the Terminal Multiplexer](https://www.linode.com/docs/networking/ssh/persistent-terminal-sessions-with-tmux/)
- [Tmux Command Examples To Manage Multiple Terminal Sessions](https://www.ostechnix.com/tmux-command-examples-to-manage-multiple-terminal-sessions/)
- [A tmux Crash Course](https://thoughtbot.com/blog/a-tmux-crash-course)
- [How to Manage and Restore Tmux Sessions in Linux - Make Tech Easier](https://www.maketecheasier.com/manage-restore-tmux-sessions-linux/)
- [Tmux Cheat Sheet & Quick Reference](https://tmuxcheatsheet.com/)
- [Arabesque | Systems, Tools, and Terminal Science](https://sanctum.geek.nz/arabesque/)
- [tmux: Productive Mouse-Free Development](http://pragprog.com/book/bhtmux/tmux)
- [How to reorder windows](http://superuser.com/questions/343572/tmux-how-do-i-reorder-my-windows)
- [tmux - a very simple beginner's guide](https://www.ocf.berkeley.edu/~ckuehl/tmux/)
- [TMUX The Terminal Multiplexer (Part 1) | Hawk Host Blog](https://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/)
- [TMUX – The Terminal Multiplexer (Part 2) | Hawk Host Blog](https://blog.hawkhost.com/2010/07/02/tmux-%e2%80%93-the-terminal-multiplexer-part-2/)

_ProgramTmux:_ Config

- [tmuxinator/tmuxinator](https://github.com/tmuxinator/tmuxinator)
- [chriskuehl/dotfiles](https://github.com/chriskuehl/dotfiles/blob/master/tmux.conf)

## Tmux-Shortcuts

- Start: `tmux`
- The prefix: `ctrl+b` or `^b`
  - Changeed to ^a in tmux.conf
- Enter command mode: `ctrl+a,:`
- detach: `^a+d`
- big clock: `^a+t`
- list shortcuts: `^a+?`
- quit: `exit`

## Tmux-Shortcuts-Sessions

- Start a new session with the name: `tmux new -s mysession`, `:new -s mysession`
- Re-attach session: `tmux a name`
- Detach from session: `^b+d`
- Start a new session: `tmux`, `tmux new`, `tmux new-session`, `:new`
- kill: `tmux kill-session -t 0`
- kill/delete session mysession: `tmux kill-ses -t mysession`, `tmux kill-session -t mysession`
- kill/delete all sessions but the current: `tmux kill-session -a`
- kill/delete all sessions but mysession: `tmux kill-session -a -t mysession`
- Kill all sessions and sessions: `tmux kill-server`
- Rename session: `^b+$`
- Detach others on the session (Maximize window by detach other clients): `:attach -d`
- Show all sessions: `tmux ls`, `tmux list-sessions`, and `^b+s`
- Reattach: `tmux attach-session -t 0` t for target, 0 for session name
- Attach to last session: `tmux a`
- Attach to a session with the name mysession: `tmux a -t mysession`
- Move to previous session: `^b+(`
- Move to next session: `^b+)`

## Tmux-Shortcuts-Windows

- Add window: `CTRL+B c`
- Switch windows: `CTRL+B <window number>`
- start a new session with the name mysession and window mywindow: `tmux new -s mysession -n mywindow`
- Create window: `^b+c`
- Rename current window: `^b+,`
- Close current window: `^b+&`
- Previous window: `^b+p`
- Next window: `^b+n`
- Find window: `^b+f`
- List window: `^b+w`
- Switch/select window by number: `^b+0...9`
- Reorder window, swap window number 2(src) and 1(dst): `swap-window -s 2 -t 1`
- Move current window to the left by one position: `swap-window -t -1`

## Tmux-Shortcuts-### Panes

- Toggle last active pane: `^b+;`
- Split pane vertically: `^b+%`
- Split pane horizontally: `^b+"`
- Move the current pane left: `^b+{`
- Move the current pane right: `^b+}`
- Switch to pane to the direction: `^b+arrow`
- Toggle synchronize-panes(send command to all panes): `setw synchronize-panes`
- Toggle between pane layouts: `^b+SPACE`
- Switch to next pane: `^b+o`
- Show pane numbers: `^b+q`
- Switch/select pane by number: `^b+q+0...9`
- Toggle pane full screen: `CTRL+B z`
- Convert pane into a window: `^b+!`
- Resize current pane height(holding second key is optional): `^b+w`
- Resize current pane width(holding second key is optional): `^b+^arrow` or `^b-and-arrows`
- Close/Kill current pane: `^b+x`
- break pane into window (e.g. to select text by mouse to copy): `^b++`
- restore pane from window: `^b+-`

## Tmux-Copy Mode

[Tmux copy paste](https://www.rushiagr.com/blog/2016/06/16/everything-you-need-to-know-about-tmux-copy-pasting-ubuntu/)

In tmux.conf, add `setw -g mode-keys vi` to add vim keys to copy mode

- Enter Copy Mode: `^a [`
- Paste: `^a ]`
- Use arrow (or vim to move around)
- Start Selection: `spacebar`
- clear Selection: `escape`
- Quit and Copy: `Enter`
- Quit Copy mode (no copy): `q`
- Cursor to bottom line: `L`
- Cursor to middle line: `M`
- Cursor to top line: `H`
- End of line: `$`
- Goto line: `:`
- Half page down: `C-d`
- Half page up: `C-u`
- Next page: `C-f`
- Next word: `w`
- Previous page: `C-b`
- Previous word: `b`
- Scroll down: `C-Down or J`
- Scroll up: `C-Up or K`
- Start of line: `0`

## Tmux-Config

- reload config file `tmux source-file ~/.tmux.conf`
- Change prefix binding key

``` bash
set -g prefix C-a
bind C-a send-prefix
```

- sudo nano /etc/tmux.conf
  - `set –g prefix C-a`
  - `unbind C-b`

tmux.conf **Examples**

``` bash
# Mouse support - set to on if you want to use the mouse
setw -g mode-mouse off
set -g mouse-select-pane off
set -g mouse-resize-pane off
set -g mouse-select-window off

# Set the default terminal mode to 256color mode
set -g default-terminal "screen-256color"
# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on
# Center the window list
set -g status-justify centre
# Maximize and restore a pane
unbind Up bind Up new-window -d -n tmp \; swap-pane -s tmp.1 \; select-window -t tmp
unbind Down
bind Down last-window \; swap-pane -s tmp.1 \; kill-window -t tmp
```
