<h1 style='padding:1rem;font-weight:bold' align='center'>Git VsCode Settings</h1>

### Git commands commands

    ls => list files
    cd .. => change directory to .. (parent folder)
    cd desktop => change directory to 'desktop' folder (in this current folder)
    mkdir test-repository => make directory called 'test-repository'
    cd test-repository => change directory to 'test-repository'
    code . => launch vsCode with the current folder
    code . -r => launch vsCode with the current folder in the current vsCode window

### Local/remote repository, init and pushes commands

    git init => initialize current folder for git
    git remote add origin sshAdress => add a new git folder (sshAdress), linked to the current local folder
    git status => check the branch you are currently working on
    git add . => add current folder to the files ready to commit (pre commit command)
    git commit -m "commit message" => commit with a "commit message" (pre push command)
    git push -u origin main => push the current folder to git on the branch 'main'

    git add . => add files ready for another commit etc
    git commit -m "2nd commit message"
    git push -u origin branchName

### Clone commands

    git clone sshAddress => download sshAddress repository
    git clone -b dev sshAddress => clone specificBranch from sshAddress

### Pull commands

    git pull => get repository files
    git push -f origin main => force push to main

### Remote commands

    git remote set-url origin sshAddress => change git remote repository to sshAddress
    Display origin
    git remote show origin
    git config --get remote.origin.url
    git remote show [remote-name] command

### Branches commands

    git checkout -b dev => create dev branch and switch to it
    git checkout main => switch to main branch

    git diff main dev => list differences between both branches

    git branch => show the branch you are currently working on
    git merge dev => merge the dev branch to the branch you are currently working on
    git merge main dev => merge the dev branch to the main branch

    git branch -d localBranch => delete local branch
    git push origin --delete branchName => delete remote branch
    git push origin dev:main => push remote dev branch to main branch

### Commits commands

    git reset --hard origin/main => delete all commits not pushed on branch main
    git reset --hard 0d1d7fc32 => delete all commits until 0d1d7fc32

