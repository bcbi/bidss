# Contributing

| Table of contents | 
| ----------------- |
| [1. One-time setup](#1-one-time-setup) | 
| [2. How to use Vim](#2-how-to-use-vim) |
| [3. Normal Git workflow and normal GitHub workflow](#3-normal-git-workflow-and-normal-github-workflow) |
| [4. Deleting branches](#4-deleting-branches) |
| [5. Troubleshooting](#5-troubleshooting) |

# 1. One-time setup

Tell Git to use Vim as your editor:
```bash
git config --global core.editor vim
```

# 2. How to use Vim

Vim has multiple "modes". The two most important modes are `Normal mode` and `Insert mode`.

Whenever Vim opens, it always starts off in `Normal mode`.

If you are currently in `Normal mode`, you can enter `Insert mode` by pressing `i`.

If you are currently in `Insert mode`, you can exit `Insert mode` and enter `Normal mode` by pressing `Escape`.

While you are in `Insert mode`, you can enter text by typing normally.

While you are in `Normal mode`, you can save ("write") your changes by typing `:w` and pressing `Enter/Return`.

While you are in `Normal mode`, you can save ("write") your changes and quit Vim by typing `:wq` and pressing `Enter/Return`.

While you are in `Normal mode`, you can quit Vim WITHOUT saving your changes by typing `:q!` and pressing `Enter/Return`. This will discard any text that you typed.

# 3. Normal Git workflow and normal GitHub workflow

## 3.1. Set up branch
Run these commands to set up your own branch:
```bash
git fetch --all --prune
git checkout master
git merge origin/master
git branch yourinitials/your-branch-name
git checkout yourinitials/your-branch-name
```

## 3.2. Save work and push to GitHub

Now you work on your branch. To save your work:
```bash
git add -A
git commit
# Vim opens.
# Press `i` to enter `Insert mode`.
# Type a long and descriptive commit message.
# Press `Escape` to exit `Insert mode` and enter `Normal mode`.
# Type `:wq` to save your changes and quit vim.
git push origin yourinitials/your-branch-name
```

## 3.3. Make a pull request

1. Click on the `Pull Requests` tab.
2. Click the green `New pull request` button.
3. Click on the drop-down box that says `compare:`, and select your branch `yourinitials/your-branch-name`.
4. Click on the green `Create pull request` button.
5. In the `title` box, Enter a descriptive **title** for your pull request.
6. In the large `Leave a comment` box, enter a long detailed description of the changes that your pull request makes.
7. Click the green `Create pull request` botton.

## 3.4. Update your local branch with changes made on GitHub.com

After you push your branch to GitHub, you may decide to use the GitHub web editor to make changes directly in your web browser. If you do this, you should then pull the changes you made on the GitHub website back down to your local computer:
```bash
git fetch --all --prune
git checkout yourinitials/your-branch-name
git merge origin/yourinitials/your-branch-name
# Vim opens.
# You will notice that it already contains
# an auto-generated merge commit message.
# Type `:wq` to accept this message and quit vim.
git push origin yourinitials/your-branch-name
```

## 3.5. View all branches

All branches on your local computer
```bash
git fetch --all --prune
git branch
```

All branches on your local computer and all branches on GitHub
```bash
git fetch --all --prune
git branch -a
```

# 4. Deleting branches

## 4.1. I want to delete a branch and discard all of the work

Suppose that `yourinitials/branch-you-want-to-delete` is the branch you want to delete.
```bash
git reset --hard
git fetch --all --prune
git checkout master
git reset --hard origin/master
git branch -D yourinitials/branch-you-want-to-delete # deletes the branch on your local computer
git push origin --delete yourinitials/branch-you-want-to-delete # deletes the branch on GitHub
```

# 5. Troubleshooting

## 5.1. If you accidentally worked on the `master` branch instead of a separate branch:

```bash
git stash
git branch yourinitials/your-branch-name
git fetch --all --prune
git checkout master
git reset --hard origin/master
git checkout yourinitials/your-branch-name
git stash pop
git add -A
git commit
git push origin yourinitials/your-branch-name
```

## 5.2. "error: failed to push some refs"

You might encounter this error when you try to push your branch to GitHub.

For example, you try to run `git push origin YOURINITIALS/YOUR-BRANCH-NAME`, but you get the following error:
```
To github.com:REPO_OWNER/REPO_NAME.git
 ! [rejected]        YOURINITIALS/YOUR-BRANCH-NAME -> YOURINITIALS/YOUR-BRANCH-NAME (fetch first)
error: failed to push some refs to 'github.com:REPO_OWNER/REPO_NAME.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

This means that there are some changes on GitHub that you don't have on your local computer. In order to fix this error, run the following commands:
```bash
git fetch --all --prune
git checkout YOURINITIALS/YOUR-BRANCH-NAME
git merge origin/YOURINITIALS/YOUR-BRANCH-NAME
# Vim opens.
# You will notice that it already contains
# an auto-generated merge commit message.
# Type `:wq` to accept this message and quit vim.
git push origin YOURINITIALS/YOUR-BRANCH-NAME
```

## 5.3. "Simple" merge conflicts (merge conflicts that can be resolved using the web editor on GitHub.com)

If your pull request has a "simple" merge conflict, then you will see the following message at the bottom of the pull request page, right above the merge button:

> This branch has conflicts that must be resolved
>
> Use the web editor or the to resolve conflicts. 

Next to this message, click on the button that says "Resolve conflicts".  This brings you to a new page where you can resolve all of the merge conflicts.

Each merge conflict begins with the characters `<<<<<<<` and ends with the characters `>>>>>>>`. For example, a conflict may look like this:
```julia
println("apple")
println("banana")
<<<<<<< someones_initials/some_branch_name
a = 1 + 1
b = 2 + 2
c = 3 + 3
=======
a = "hello"
b = "world"
>>>>>>> master
println("pear")
```

To resolve this merge conflict, you must replace all of the merge conflict text (including the `<<<<<<<` at the beginning and the `>>>>>>>` at the end) with the text that you actually want to include. For example, in the above example, you might decide that you want to resolve the merge conflict as follows:
```julia
println("apple")
println("banana")
a = 1 + 1
b = "world"
c = 3 + 3
println("pear")
```

Repeat this process for all of the merge conflicts. You can use the `Prev` and `Next` buttons to quickly jump between merge conflicts.

**Important:** Make sure that you resolve all of the merge conflicts. In particular, make sure that you have removed all of the conflict markers. The conflict markers are the characters that look like this:
```
<<<<<<< 
=======
>>>>>>> 
```

Once you have resolved all of the merge conflicts and removed all of the conflict markers, click on the `Mark as resolved` button. Then, click on the green `Commit merge` button.

## 5.4. "Complicated" merge conflicts (merge conflicts that must be resolved using the command line)

TODO: write this section.
