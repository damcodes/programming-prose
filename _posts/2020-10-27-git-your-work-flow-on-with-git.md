---
layout: post
title: Git Your Work Flow On With Git
subtitle: Basic git commands--add, commit, push
gh-repo: davidmolina2810/programming-prose
gh-badge: [star, fork, follow]
tags: [git]
comments: true
---

### Git. _Git?_ **GIT!**
What is git? Must I master it to truly call myself a competent programmer?
What's _really_ the point?

Git is a [version control system](https://www.geeksforgeeks.org/version-control-systems/#:~:text=Version%20control%20systems%20are%20a,(snapshots)%20of%20the%20project.)(VSC) that we can run directly in a terminal using [bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) commands. The point of any version control system is to offer some sort of mechanism to log checkpoints in your progress.
The mechanism provided to us by git logs checkpoints by "taking a picture", let's call it picture A, of the current state of your code, pointing to picture A as the most recent version of your code, and adding the picture to a collection of _all_ pictures taken of your code. Until you command git to take another picture, that is, you specify a more recent checkpoint in your progress, git will continue to point to picture A as the most up-to-date version of your code. 

The most basic git workflow you should get familiar with is staging your changes, committing your changes, and saving the changes you made on your local machine to the Github server, where your repository is located. 

In practice, this translates to these three commands

```bash
1. git add
2. git commit
3. git push
```

### Step One: git add

As you edit your code, any file within the root directory of your project that has been changed in anyway, from adding comments to defining a method, will now be referred to as "unstaged". This just means that you've adjusted your files in some way but you have yet to tell git that you want to prepare, or "stage", those changes to be transferred from existing only on your machine to saving into the repository in Github's servers.

**Note:** You can check to see if you have any unstaged files in your repo by executing **git status** in your terminal while in the root directory of your project.
{: .box-note}

To execute git add, you call git add and pass the name of the file you would like to stage into your terminal.

```bash
git add <unstaged_file_name>
```
Many times, though, you've altered more than one file and at this point, we'd have to call git add for each unstaged file. 

_But wait..._ Are not we programmers? And as such, are not we lazy? 
Indeed we are. And our sloth demands that we use this shortcut when we want to stage _every_ file in our repo:

```bash
git add .
```
The period after **git add** is a reference to your root directory. The code is instructing git to add all unstaged files (all files in the root directory that have been altered since the last version) to be staged. Now that they are staged, they are ready to be committed.

### Step Two: git commit

When you make a commit in git, you are moving the version pointer from the previous picture of your code to the new picture of your code with the changes you just staged. Each commit is logged and given a unique, alphanumeric **commit number**.


**Note:** Though outside the scope of this article, it's worth noting that these commit numbers are integral in git's implementation of version control. [Check this out for more info on that.](https://www.freecodecamp.org/news/the-ultimate-guide-to-git-reset-and-git-revert/) 
{: .box-note}

To commit your staged changes, you must run **git commit** and also pass a flag, -m, which stands for message, and a description (message) of the changes made between this commit and the last, passed as a string. You would type this in your terminal, with your own message:
```bash
git commit -m "message"
```
With your staged files now committed, you can move onto pushing your code to Github.

### Step 3: git push

The final step is to push your code from it's repo in your local machine to it's counterpart in Github's server. As long as you haven't [branch](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)ed away from the master branch, you should be able to run the following code in your terminal and get the expected outcome:
```bash
git push
```
By default, the master branch on your computer already has an upstream to it's counterpart hosted on Github's servers because you cloned the repo from Github. This means simply executing **git push** will save all of our committed changes to the repo in Github's database.

### Conclusion
With this post I aimed to provide a basic, introductory understanding of working with three core git commands--**git add**, **git commit**, and **git push**--through the command line. With this basic understanding you could also understand the basics of version control in git. This, however, is just the tip of the iceberg. Git is powerful enough to help with advanced version control (i.e. branching, merging, reseting, etc.) and with project management and collaboration. 

#### Learn more
- [Learn Git- Git tutorials, workflows, and commands](https://www.atlassian.com/git)
- [First steps with git](https://www.earthdatascience.org/workshops/intro-version-control-git/basic-git-commands/)
- [The Ultimate Github Collaboration Guide](https://medium.com/@jonathanmines/the-ultimate-github-collaboration-guide-df816e98fb67)







