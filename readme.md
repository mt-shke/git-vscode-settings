Navigate commands 

    ls => list files
    cd .. => change directory to .. (parent folder)
    cd desktop => change directory to 'desktop' folder (in this current folder)
    mkdir test-repository => make directory called 'test-repository'
    cd test-repository => change directory to 'test-repository'
    code . => launch vsCode with the current folder  
    
    
Git commands
 
    git init => initialize current folder for git
    git add . => add current folder to the files ready to commit (pre commit command)
    git commit -m "commit message" => commit with a "commit message" (pre push command)
    git remote add origin sshAdress => add a new git folder (sshAdress), linked to the current local folder
    git status => check the branch you are currently working on
    git push -u origin main => push the current folder to git on the branch 'main'
    
    git add . => add files ready for another commit etc
    git commit -m "2nd commit message"
    git push -u origin branchName
    
    git clone sshAddress => download sshAddress repository

    git pull => get repository files
    git push -f origin main => force push to main

    git remote set-url origin sshAddress => change git remote repository
    
    git checkout -b dev => create dev branch and switch to it
    git checkout main => switch to main branch
    
    git diff main dev => list differences between both branches
    
    git branch => show the branch you are currently working on
    git merge dev => merge the dev branch to the branch you are currently working on
