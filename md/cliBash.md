# cliBash

- For bash, put stuff in ~/.bashrc, and make ~/.bash_profile source it.
- For zsh, put stuff in ~/.zshrc, which is always executed.
- Login Shell File Order: /etc/profile,~/.bash_profile, ~/.bash_login, and ~/.profile
- Non-Login Shell File Order: ~/.bashrc
- Bash reads and executes _etc_ profile (if it exists).
  - File `.bash_profile` or `/etc/bash.bashrc`
  - run at login (or Terminal), add function to it
- .bashrc
- After reading that file, it looks for `~/.bash_profile`, `~/.bash_login`, and `~/.profile` in that order
  - runs at every shell, add variables
  - executes the first one that exists and is readable.
- Bash reads and executes ~/.bash_logout (if it exists) When a login shell exits
- Bash reads and executes ~/.bashrc (if it exists)When started as an interactive shell (but not a login shell).
  - This may be inhibited by using the --norc option.
  - The --rcfile file option forces Bash to read and execute commands from file instead of ~/.bashrc.
- Reload startup file: `source ~/.bash_profile` or `~/.bash_profile`.

## Bash Scripting

Set permission to run: `chmod 0755 script.sh`
Make executable `chmod +x <file>`

## Bash Aliases

```Bash
alias l="ls -l"
alias la='ls -la'
alias cdtext="cd $HOME/Dropbox/karl/text"
alias cdbin="cd $HOME/Dropbox/bin"
alias bsh="source ~/.bash_profile"
alias rbsh='act.sh rbash'
alias ebpro='subl ~/.bash_profile'
alias ebrc='subl ~/.bashrc'
alias py='python3'
alias setScript='chmod 0755'
alias x="act.sh "
```

## Bash Variables

- Set Variable: `export VAR="value"`
- Display Variable: `echo $VAR`
- Set Variable from Command: `export VAR=$(command)`
- Display environmental variables: `printenv`
  - Set variable: `STR="Hello World!"`
- Use Variable: `echo $STR`
- **System Variables** Defined
  - HOME - Full path of home directory.
  - SHELL - Full path of log-in shell.
  - USER - User name (a.k.a. "short name" in Mac OS X).
  - PATH - List of directories containing commands.
  - LOGNAME - Same as USER.
  - PWD - Full path of present working directory.

## Bash Conditions

Load .bashrc if it exists: `test -f ~/.bashrc && source ~/.bashrc`

```Bash
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
```

## Bash Functions

Examples

```Bash
function cdd() {
    cd $1
    ls
}
function gitpush() {
    B=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    git add -A .
    git commit -m $1
    git push -u origin $B
}
function gitrefresh() {
    B=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    git checkout master
    git pull origin master
    git checkout $B
}
function showf {
 defaults write com.apple.finder AppleShowAllFiles TRUE
 killall Finder
}
function hidef {
 defaults write com.apple.finder AppleShowAllFiles FALSE
 killall Finder
}
```
