# 1.5 Tracking Changes Reflection
- How does tracking and adding changes make developers' lives easier?
  Tracking and adding changes allows a developer to keep a working master file while creating a separate branch (or branches). In the separate branch the developer can edit existing or add new files, without fear of introducing bugs into the functional code. By tracking efficiently and often, developers can  follow their logic and revert back to a working state if a bug appears in the code.
- What is a commit?
  It's a package of all the changes made to a file, stored as one unit. It is a developer's safety net if a bug is accidentally introduced.
- What are the best practices for commit messages?
  First line is a short description, with a 50 char limit. The body should provide a meaningful commit message explaining motivation for the change and should be written in the imperative.
- What does the HEAD^ argument mean?
  HEAD^ = last commit
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
  1. Edit;
  2. Add; git add . = stages all changes
  3. Commit; git commit -m "Your commit message" = saves changes
- Write a handy cheatsheet of the commands you need to commit your changes?
  git status = provides info on current state
  git add . = stages all of your changes (alerts git that you've made changes)
  git commit -m "Your commit message" = saves changes
  git push = pushes the changes to a remote branch such as GitHub
- What is a pull request and how do you create and merge one?
  A pull request is a way to merge code from a different branch into the master branch. To create a pull request select "compare and pull request" from your GitHub account in the relevant folder. Check to make sure your base branch is master and your comparison branch is your new branch, fill in the title/description, then create the request.
  To merge, select the merge command, confirm it, close it, and delete the branch
- Why are pull requests preferred when working with teams?
  They make it easier for developers to collaborate using GitHub by providing a user-friendly web interface for discussing proposed changes before they're offically integrated into the project.