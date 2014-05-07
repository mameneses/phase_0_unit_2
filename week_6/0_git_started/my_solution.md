## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  

#### add
"git add (file name)"  is used to 'add' files that you would want to commit to your repositry. 

#### branch
"git branch (new file name)" this makes a 'branch' of the master. By using branch you can work on the file independently why someone else works on another part of the same file.  Once done you can merge the files back together.  to delete a branch you would put "git branch -d (file name)"

#### checkout
"git checkout(file name)" This will remove all of the changes since the last commit on (file name). This helps if you have made changes but they are not working and your want to scrap it back to your last commit point. If you use "git checkoout--(file name)" it will make sure that there are no other option other than checkout, for example if there a branch, it will still revert back to its last commit. 

#### clone
"git clone (url address or repo location)" This clones a repo into a new directory. 

#### commit
"git commit (file name)"  this takes a snapshot of your repository. You would want to use this to save your work so that you can look back on it or to share it with other people that maybe working on the project.

#### fetch
"git fetch (repo name)" This can be used to download 'objects' or 'refs' from other repositories. 

#### log
"git log" this, much like is sounds, is a log of all of the changes that have been made, when they were made and by who. This is very helpful to track changes.

#### merge
(git merge (file name) this will help you merge the changes that you have done to the master or which ever other branch you may be on. 

#### pull
"git pull (location of repo)" this allows you to 'pull' changes that have been made on the repo. It is great when you want to update your local repo to match changes that you have made remotrely or that other people have made.

#### push
"git push (locatin to store commits)" Git push takes your commits and 'pushes' to to where ever you specify. Often you would want to push them to a remote location (on GitHub) for use in other locations or by other people.


#### reset
"git reset (file name)" This will remove a file or files from a staging area, before they are commited.

#### rm
"git rm (file name)" this will remove files from disk as well as stage the removal of the files to be ready to commit the removals.

#### status
"git status" helps to see the current state of you project. This should be used often and can tell you if you have any untracked files or any uncommited file.  


## Release 4: Git Workflow

- Push files to a remote repository
	1. 'git add' the changes to you have made.
	2. 'git commit' those changes
	3. 'git push' the commits to the remote repository

- Fetch changes
	1. "git remote -v" check the current remote 
	2. "git remote add upstream (url repo)" set up new remote 
	3. "origin" to verify the new remote
	4. "git fetch upstream" 

- Commit locally
	1. "git status"  to see what need to be commited and what branch you are on, if not in local branch go to local branch.
	2. "git add (file name)" that was changed or added. 
	3. "git commit"


## Release 5: Reflection
I feel that this was a good exercise to get a better grasp of github and working within the command line. I found it to be a bit dry with the definitions and found that online resources such a code schools try git, to be helpful because it was a bit more hands on. When reading through the different commands in at git-scn.com, I found myself getting confused and overwhelmed by all of the way that these commands can be used. I work best from examples and I did feel there were enough examples in the information that is available online. I still do not feel that I have a complete grasp of using github from the command line.