# Contributing

## One-time setup

```bash
git config --global core.editor vim
```

## How to work on your own branch:

### Set up branch
Run these commands to set up your own branch:
```bash
git fetch --all --prune
git checkout master
git merge --ff-only origin/master
git branch yourinitials/your-branch-name
git checkout yourinitials/your-branch-name
```

### Save work and push to GitHub

Now you work on your branch. To save your work:
```bash
git add -A
git commit
```

`vim` opens. Press `i` to enter Insert mode. Type a long and descriptive commit message. When you are done, press `Esc` to exit Insert mode. Then, type `:wq` to save and exit.

```bash
git push origin yourinitials/your-branch-name
```

### Make a pull request

1. Click on the `Pull Requests` tab.
2. Click the green `New pull request` button.
3. Click on the drop-down box that says `compare:`, and select your branch `yourinitials/your-branch-name`.
4. Click on the green `Create pull request` button.
5. In the `title` box, Enter a descriptive **title** for your pull request.
6. In the large `Leave a comment` box, enter a long detailed description of the changes that your pull request makes.
7. Click the green `Create pull request` botton.

## Troubleshooting

### If you accidentally worked on the `master` branch instead of a separate branch:

```bash
git stash
git branch yourinitials/your-branch-name
git fetch --all --prune
git checkout master
git merge --ff-only origin/master
git checkout yourinitials/your-branch-name
```
