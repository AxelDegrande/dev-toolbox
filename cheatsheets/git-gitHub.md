# Git and GitHub Cheatsheet

## General Git and GitHub info
Edit files --> git add --> git commit --> git push 

## Git/ GitHub workflow
### 1. Check what changed
'''
git status
'''

### 2. State changes
To stage a specific file:
'''
git add <folder/text.txt>
'''

To stage everything that has changed:
'''
git add .
'''

### 3. Create a commit
Create a commit with:
'''
git commit -m "Your message"
'''

### 4. Push changes to GitHub
'''
git push
'''

### 5. Getting changes from GitHub
'''
git pull
'''

## Usefull commands
Check repository status:
'''
git status
'''

Show changes:
'''
git diff
'''

Show remote:
'''
git remote -v
'''

Show history:
'''
git log
'''

Show short history:
'''
git log --online
'''

Show graphic history:
'''
git log --graph
'''

Add a .gitignore file to repo:
'''
.env
.venv
*.log
__pycache__/ 
'''


## Setup Git and GitHub
### 1. Create a GitHub repository
A public repository means:<br>
- Anyone can view it.<br>
- Anyone can clone it.<br>
- Anyone can fork it.<br>
- Anyone can suggest changes through a pull request.
- Only people with appropriate write permissions can directly push changes.

### 2. Clone a repository
To download an existing GitHub repository to your computer:<br>

'''
git clone git@github.com:YOUR_USERNAME/dev-toolbox.git
'''

Then enter the repository:

'''
cd dev-toolbox
'''

### 3. Create an SSH key to connect to your GitHub
'''
ssh-keygen -t ed25519 -C "YOUR_GITHUB_EMAIL"

'''

When asked where to save the key, pressing Enter uses the default location.

You will normally get:

'''
~/.ssh/id_ed25519
~/.ssh/id_ed25519.pub
'''

These are two different files.

Private key: (This is secret!!)

'''
~/.ssh/id_ed25519
'''

Never:

- Upload it to GitHub.
- Put it in this repository.
- Put it in a screenshot.
- Send it to someone.
- Paste it into ChatGPT or another public service.


Public key:

'''
~/.ssh/id_ed25519.pub
'''

This is the key that can be added to GitHub.


### 4. Start the SSH agent
Run:
'''
eval "$(ssh-agent -s)"
'''

Then add your private key:

'''
ssh-add ~/.ssh/id_ed25519
'''

### 5. Display your public key
Run:

'''
cat ~/.ssh/id_ed25519.pub
'''

It will look approximately like:

'''
ssh-ed25519 AAAA... lots-of-characters ... comment
'''

Copy the **entire line**.

### 6. Add the SSH key to GitHub
Settings --> SSH and GPG keys --> New SSH --> Give a recognizable title --> Paste contents of ~/.ssh/id_ed25519.pub into the key field.

### 7. Change an existing repository from HTTPS to SSH
If your repository currently uses HTTPS, check with:
'''
git remote -v
'''

You may see:
'''
origin  https://github.com/YOUR_USERNAME/dev-toolbox.git (fetch)
origin  https://github.com/YOUR_USERNAME/dev-toolbox.git (push)
'''

Change the remote to SSH:
'''
git remote set-url origin git@github.com:YOUR_USERNAME/dev-toolbox.git
'''

Check again:
'''
git remote -v
'''

You should now see:
'''
origin  git@github.com:YOUR_USERNAME/dev-toolbox.git (fetch)
origin  git@github.com:YOUR_USERNAME/dev-toolbox.git (push)
'''

