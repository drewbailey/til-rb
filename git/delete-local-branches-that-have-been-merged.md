### Delete stale branches

After working in a repo for a while the number of old branches I have can get
pretty old. Now I just type `git_clean` to remove any of my local branches
that have already been merged into master

```bash
alias git_clean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
```
