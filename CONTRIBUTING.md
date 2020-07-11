# Contributing

| Table of contents | 
| ----------------- |
| [1. One-time setup](#1-one-time-setup) | 
| [2. Normal workflow](#2-normal-workflow) |
| [3. Troubleshooting](#3-troubleshooting) |

# 1. One-time setup

```bash
git config --global core.editor vim
```

# 2. Normal workflow

## 2.1 Set up branch
Run these commands to set up your own branch:
```bash
git fetch --all --prune
git checkout master
git merge --ff-only origin/master
git branch yourinitials/your-branch-name
git checkout yourinitials/your-branch-name
```

## 2.2 Save work and push to GitHub

Now you work on your branch. To save your work:
```bash
git add -A
git commit
```

`vim` opens. Press `i` to enter `Insert mode`. Type a long and descriptive commit message. When you are done, press `Esc` to exit `Insert mode`. Then, type `:wq` to write and quit.

```bash
git push origin yourinitials/your-branch-name
```

## 2.3 Make a pull request

1. Click on the `Pull Requests` tab.
2. Click the green `New pull request` button.
3. Click on the drop-down box that says `compare:`, and select your branch `yourinitials/your-branch-name`.
4. Click on the green `Create pull request` button.
5. In the `title` box, Enter a descriptive **title** for your pull request.
6. In the large `Leave a comment` box, enter a long detailed description of the changes that your pull request makes.
7. Click the green `Create pull request` botton.

## 2.4 Update your branch with new changes from `master`

```bash
git fetch --all --prune
git checkout dpa/contributing
git rebase origin/master
```

# 3. Troubleshooting

## 3.1 If you accidentally worked on the `master` branch instead of a separate branch:

```bash
git stash
git branch yourinitials/your-branch-name
git fetch --all --prune
git checkout master
git merge --ff-only origin/master
git checkout yourinitials/your-branch-name
```

## 3.2 Simple merge conflicts

TODO: write this section.

## 3.3 Complicated merge conflicts

TODO: write this section.
