# Github

## GitLinks

- [Learn Git- Git tutorials](https://www.atlassian.com/git)
- [GitHub Guides](https://guides.github.com/)
- [Hello World GitHub Guides](https://guides.github.com/activities/hello-world/)
- [GitHub:](https://desktop.github.com/)

## GitSetup

- **Install** and config
- `brew install git`
- `git config --global push.default simple`
- `git config --global user.name "user_name"`
- `git config --global user.email "email_id"`
- `git config --global pull.ff only` change how git pulls
- [Generate ssh key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
  - `ssh-keygen -t ed25519 -C "your_email@example.com"`
    - Hit enter to set Default location
    - Hit enter to set no paraphrase
    - Paste public key to github [website](https://github.com/settings/keys)
If you want credentials temporarily stored
git config --global credential.helper 'cache --timeout 3600'
If you want permanent credentials do this before push
git config --global credential.helper store (first time only)

## GitCommands

- Workflow
  - Clone Repo
  - Add files to staging area
  - Add and Commit changes to files
  - Push to remote
  - Pull to update
- **Checkout or clone** a repository into work dir: `git clone username@host:/path/to/repository`
- **Creates a new Git** repository in working directory: `git init`
- Create Repo locally
  - goto folder
  - Initialize git repo: `git init`
  - add file: `git add .` or `git add (filename)`
  - commit file from above
  - create empty repo on github
  - link repo: `git remote add origin "github repo url"`
  - first push: `git push -u origin master`
- **Inspects** the contents of the working directory and staging area: `git status`
- **Adds files** from the working directory to the staging area: `git add <filename>`
- **Adds all** files from the working directory to the staging area: `git add .`
- Permanently stores file changes from the staging area in the repository `git commit -m <message>`
- **Combines add . and commit** into one `git commit -am <message>`
  - first -m is required for the message
  - a second -m can be used to add a description
- Specifies the remote repository using Git: `git remote add origin <url>`
- Pushes the changes to the master branch on the remote repository: `git push -u origin master`
  - linking the local repository to the remote repository
- Pushes the changes to the master branch on the remote repository: `git push origin master`
  - given that the local repository and the remote repository are already linked
- To send those changes to your remote repository
  - Change master to whatever branch you want to push your changes to.
  - The master branch is the "default" branch when you create a repository.
  - Use other branches for development and merge them back to the master branch upon completion.
  - `git push origin master`
- Branches
  - Create a new branch named "feature_x" and switch to it using
    - `git checkout -b feature_x`
  - Switch back to master: `git checkout master`
  - Delete the branch again: `git branch -d feature_x`
  - a branch is not available to others unless you push the branch to your remote repository
    - `git push origin <branch>`
  - List: `git branch`
  - Create new branch: `git branch name`
  - Create new branch: `git checkout -n name`
  - Switch to branch name: `git checkout name`
    - name or master
- Update & Merge
  - Update your local repository to the newest commit: `git pull`
  - In your working directory to fetch and merge remote changes.
    - Merge another branch into your active branch: `git merge <branch>`
  - While in branch merge: `git merge (name merge from)`
  - In both cases git tries to auto-merge changes.
    - Unfortunately, this is not always possible and results in conflicts.
    - You are responsible to merge those conflicts manually by editing the files shown by git.
    - After changing, you need to mark them as merged with: `git add <filename>`
  - Before merging changes, you can also preview them by using
    - `git diff <source_branch> <target_branch>`
- Tagging
  - It's recommended to create tags for software releases.
  - This is a known concept, which also exists in SVN.
  - You can create a new tag named 1.0.0 by executing
  - The 1b2e1d63ff stands for the first 10 characters of the commit id you want to reference with your tag.
    - `git tag 1.0.0 1b2e1d63ff`
- Log
  - You can study repository history using: `git log`
  - To see only the commits of a certain author: `git log --author=bob`
  - To see a very compressed log where each commit is one line: `git log --pretty=oneline`
  - Or maybe you want to see an ASCII art tree of all the branches: `git log --graph --oneline --decorate --all`
  - See only which files have changed: `git log --name-status`
  - These are just a few of the possible parameters you can use: `git log --help`
  - View a commit
    - Copy Hash from `git log`
    - Show: `git show hash`
- Replace local changes
  - In case you did something wrong, which for sure never happens ;), you can replace local changes using the command
    - `git checkout -- <filename>`
    - This replaces the changes in your working tree with the last content in HEAD.
    - Changes already added to the index, as well as new files, will be kept.
    - If you instead want to drop all your local changes and commits
    - Fetch the latest history from the server and point your local master branch at it like this
      - `git fetch origin`
      - `git reset --hard origin/master`
