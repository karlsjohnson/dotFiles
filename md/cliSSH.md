# Commands SSH

- **Install** ssh: `sudo apt install openssh-server`
  - Should be installed with Ubuntu
- **On Client RSA setup**
  - goto to folder: `cd ~/.ssh`
  - generate RSA key: `ssh-keygen -t rsa`
    - Copy to server: `scp ~/.ssh/id_rsa.pub user@server:`
  - Create if needed: `mkdir -p ~/.ssh`
  - Create new file: `touch ~/.ssh/authorized_keys`
  - Copy to new file: `cat ~/id_rsa.pub >> ~/.ssh/authorized_keys`
  - Verify: `more ~/.ssh/authorized_keys`
  - remove: `rm ~/id_rsa.pub`
- **SSH Config**
  - Change port: `vi /etc/ssh/sshd_config`
  - Restart: `/etc/init.d/ssh restart`
  - login: `ssh username@hostname.com -p 50683`
  - Reload Bash Profile: `source ~/.bash_profile`
- **Mosh Useage**
  - kill session: `kill (number)`
  - Forward ports:
  - SSH: WAN TCP port 22 to LAN TCP port 22
  - SSH: WAN UDP port 60000-60010 to LAN UDP port 60000-60010
- **Github**
  - generate `ssh-keygen -t ed25519 -C "your_email@example.com"`
  - start ssh-agent in background `eval "$(ssh-agent -s)"`
  - add below to ~/.ssh/config
  - add to agent `ssh-add -K ~/.ssh/id_ed25519`
  - add to agent `ssh-add -K ~/.ssh/id_rsa`
  - add ed25519.pub to github->setting->ssh->new
  - add other keys to agent too.

>Host *
>  AddKeysToAgent yes
>  UseKeychain yes
>  IdentityFile ~/.ssh/id_ed25519
>  IdentityFile ~/.ssh/id_rsa

(reearch - adding passwords?)
