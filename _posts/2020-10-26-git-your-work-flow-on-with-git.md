---
layout: post
title: Git Your Work Flow On With Git
subtitle: Intro to basic git commands
gh-repo: davidmolina2810/programming-prose
gh-badge: [star, fork, follow]
tags: [git]
comments: true
---

####Git. _Git?_ **GIT!**
What is git? Must I master it to truly call myself a competent programmer?
What's _really_ the point?

Git is a [version control system](https://www.geeksforgeeks.org/version-control-systems/#:~:text=Version%20control%20systems%20are%20a,(snapshots)%20of%20the%20project.)(VSC). The point of any version control system is to offer some sort of mechanism to log checkpoints in your progress.
The mechanism provided to us by git logs checkpoints by "taking a picture", let's call it picture A, of the current state of your code, pointing to picture A as the most recent version of your code, and adding the picture to a collection of _all_ pictures taken of your code. Until you command git to take another picture, that is, you specify a more recent checkpoint in your progress, git will continue to point to picture A as the most up-to-date version of your code. 

The most basic git workflow you should get familiar with is staging your changes, commiting your changes, and saving the changes you made on your local machine to the Github server, where your repository is located. 

In practice, this translates to these three commands

1. git add
2. git commit
3. git push

####Step One: git add

As you edit your code, any file within the root directory of your project that has been changed in anyway, from adding comments to defining a method, will now be referred to as "unstaged". This just means that you've adjusted your files in some way but you have yet to tell git that you want to prepare, or "stage", those changes to be transferred from existing only on your machine to saving into the repository in Github's servers.
